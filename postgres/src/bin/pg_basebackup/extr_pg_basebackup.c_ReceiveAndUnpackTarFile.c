
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgoff_t ;
typedef int mode_t ;
typedef int filename ;
typedef int current_path ;
typedef int PGresult ;
typedef int PGconn ;
typedef int FILE ;


 scalar_t__ EEXIST ;
 int MAXPGPATH ;
 scalar_t__ PGRES_COPY_OUT ;
 int PQerrorMessage (int *) ;
 int PQfreemem (char*) ;
 int PQgetCopyData (int *,char**,int ) ;
 int * PQgetResult (int *) ;
 int PQgetisnull (int *,int,int ) ;
 char* PQgetvalue (int *,int,int) ;
 scalar_t__ PQresultStatus (int *) ;
 int WriteRecoveryConfig (int *,char*,int ) ;
 char* basedir ;
 scalar_t__ chmod (char*,int ) ;
 scalar_t__ errno ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fwrite (char*,int,int,int *) ;
 char* get_tablespace_mapping (char*) ;
 scalar_t__ mkdir (char*,int ) ;
 int pg_dir_create_mode ;
 int pg_log_error (char*,...) ;
 scalar_t__ pg_str_endswith (char*,char*) ;
 int progress_report (int,char*,int) ;
 int read_tar_number (char*,int) ;
 int recoveryconfcontents ;
 int snprintf (char*,int,char*,char*,char*) ;
 int strlcpy (char*,char*,int) ;
 int strlen (char*) ;
 scalar_t__ symlink (char const*,char*) ;
 int totaldone ;
 scalar_t__ writerecoveryconf ;

__attribute__((used)) static void
ReceiveAndUnpackTarFile(PGconn *conn, PGresult *res, int rownum)
{
 char current_path[MAXPGPATH];
 char filename[MAXPGPATH];
 const char *mapped_tblspc_path;
 pgoff_t current_len_left = 0;
 int current_padding = 0;
 bool basetablespace;
 char *copybuf = ((void*)0);
 FILE *file = ((void*)0);

 basetablespace = PQgetisnull(res, rownum, 0);
 if (basetablespace)
  strlcpy(current_path, basedir, sizeof(current_path));
 else
  strlcpy(current_path,
    get_tablespace_mapping(PQgetvalue(res, rownum, 1)),
    sizeof(current_path));




 res = PQgetResult(conn);
 if (PQresultStatus(res) != PGRES_COPY_OUT)
 {
  pg_log_error("could not get COPY data stream: %s",
      PQerrorMessage(conn));
  exit(1);
 }

 while (1)
 {
  int r;

  if (copybuf != ((void*)0))
  {
   PQfreemem(copybuf);
   copybuf = ((void*)0);
  }

  r = PQgetCopyData(conn, &copybuf, 0);

  if (r == -1)
  {



   if (file)
    fclose(file);

   break;
  }
  else if (r == -2)
  {
   pg_log_error("could not read COPY data: %s",
       PQerrorMessage(conn));
   exit(1);
  }

  if (file == ((void*)0))
  {

   int filemode;





   if (r != 512)
   {
    pg_log_error("invalid tar block header size: %d", r);
    exit(1);
   }
   totaldone += 512;

   current_len_left = read_tar_number(&copybuf[124], 12);



   filemode = read_tar_number(&copybuf[100], 8);





   current_padding =
    ((current_len_left + 511) & ~511) - current_len_left;




   snprintf(filename, sizeof(filename), "%s/%s", current_path,
      copybuf);
   if (filename[strlen(filename) - 1] == '/')
   {



    if (copybuf[156] == '5')
    {



     filename[strlen(filename) - 1] = '\0';
     if (mkdir(filename, pg_dir_create_mode) != 0)
     {
      if (!((pg_str_endswith(filename, "/pg_wal") ||
          pg_str_endswith(filename, "/pg_xlog") ||
          pg_str_endswith(filename, "/archive_status")) &&
         errno == EEXIST))
      {
       pg_log_error("could not create directory \"%s\": %m",
           filename);
       exit(1);
      }
     }

     if (chmod(filename, (mode_t) filemode))
      pg_log_error("could not set permissions on directory \"%s\": %m",
          filename);

    }
    else if (copybuf[156] == '2')
    {
     filename[strlen(filename) - 1] = '\0';

     mapped_tblspc_path = get_tablespace_mapping(&copybuf[157]);
     if (symlink(mapped_tblspc_path, filename) != 0)
     {
      pg_log_error("could not create symbolic link from \"%s\" to \"%s\": %m",
          filename, mapped_tblspc_path);
      exit(1);
     }
    }
    else
    {
     pg_log_error("unrecognized link indicator \"%c\"",
         copybuf[156]);
     exit(1);
    }
    continue;
   }




   file = fopen(filename, "wb");
   if (!file)
   {
    pg_log_error("could not create file \"%s\": %m", filename);
    exit(1);
   }


   if (chmod(filename, (mode_t) filemode))
    pg_log_error("could not set permissions on file \"%s\": %m",
        filename);


   if (current_len_left == 0)
   {



    fclose(file);
    file = ((void*)0);
    continue;
   }
  }
  else
  {



   if (current_len_left == 0 && r == current_padding)
   {




    fclose(file);
    file = ((void*)0);
    totaldone += r;
    continue;
   }

   if (fwrite(copybuf, r, 1, file) != 1)
   {
    pg_log_error("could not write to file \"%s\": %m", filename);
    exit(1);
   }
   totaldone += r;
   progress_report(rownum, filename, 0);

   current_len_left -= r;
   if (current_len_left == 0 && current_padding == 0)
   {





    fclose(file);
    file = ((void*)0);
    continue;
   }
  }
 }
 progress_report(rownum, filename, 1);

 if (file != ((void*)0))
 {
  pg_log_error("COPY stream ended before last file was finished");
  exit(1);
 }

 if (copybuf != ((void*)0))
  PQfreemem(copybuf);

 if (basetablespace && writerecoveryconf)
  WriteRecoveryConfig(conn, basedir, recoveryconfcontents);





}
