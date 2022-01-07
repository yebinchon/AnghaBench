
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zerobuf ;
typedef int pgoff_t ;
typedef int header ;
typedef int * gzFile ;
typedef int filename ;
struct TYPE_2__ {int len; char* data; } ;
typedef int PGresult ;
typedef int PGconn ;
typedef int FILE ;


 int MAXPGPATH ;
 scalar_t__ MINIMUM_VERSION_FOR_RECOVERY_GUC ;
 int MemSet (char*,int ,int) ;
 scalar_t__ PGRES_COPY_OUT ;
 char* PQerrorMessage (int *) ;
 int PQfreemem (char*) ;
 int PQgetCopyData (int *,char**,int ) ;
 int * PQgetResult (int *) ;
 int PQgetisnull (int *,int,int ) ;
 char* PQgetvalue (int *,int,int ) ;
 scalar_t__ PQresultStatus (int *) ;
 scalar_t__ PQserverVersion (int *) ;
 int WRITE_TAR_DATA (char*,int) ;
 int Z_DEFAULT_STRATEGY ;
 scalar_t__ Z_OK ;
 int _O_BINARY ;
 int _setmode (int ,int ) ;
 char* basedir ;
 scalar_t__ compresslevel ;
 int dup (int ) ;
 int exit (int) ;
 scalar_t__ fclose (int *) ;
 int fileno (int *) ;
 int * fopen (char*,char*) ;
 int get_gz_error (int *) ;
 scalar_t__ gzclose (int *) ;
 int * gzdopen (int ,char*) ;
 int * gzopen (char*,char*) ;
 scalar_t__ gzsetparams (int *,scalar_t__,int ) ;
 int memcpy (char*,char*,int) ;
 int pg_file_create_mode ;
 int pg_log_error (char*,char*,...) ;
 int progress_report (int,char*,int) ;
 int read_tar_number (char*,int) ;
 TYPE_1__* recoveryconfcontents ;
 int snprintf (char*,int,char*,char*,...) ;
 int * stdout ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 int tarCreateHeader (char*,char*,int *,int,int ,int,int,int ) ;
 int time (int *) ;
 int totaldone ;
 scalar_t__ writerecoveryconf ;

__attribute__((used)) static void
ReceiveTarFile(PGconn *conn, PGresult *res, int rownum)
{
 char filename[MAXPGPATH];
 char *copybuf = ((void*)0);
 FILE *tarfile = ((void*)0);
 char tarhdr[512];
 bool basetablespace = PQgetisnull(res, rownum, 0);
 bool in_tarhdr = 1;
 bool skip_file = 0;
 bool is_recovery_guc_supported = 1;
 bool is_postgresql_auto_conf = 0;
 bool found_postgresql_auto_conf = 0;
 int file_padding_len = 0;
 size_t tarhdrsz = 0;
 pgoff_t filesz = 0;






 if (PQserverVersion(conn) < MINIMUM_VERSION_FOR_RECOVERY_GUC)
  is_recovery_guc_supported = 0;

 if (basetablespace)
 {



  if (strcmp(basedir, "-") == 0)
  {
    tarfile = stdout;
   strcpy(filename, "-");
  }
  else
  {
   {
    snprintf(filename, sizeof(filename), "%s/base.tar", basedir);
    tarfile = fopen(filename, "wb");
   }
  }
 }
 else
 {
  {
   snprintf(filename, sizeof(filename), "%s/%s.tar", basedir,
      PQgetvalue(res, rownum, 0));
   tarfile = fopen(filename, "wb");
  }
 }
 {

  if (!tarfile)
  {
   pg_log_error("could not create file \"%s\": %m", filename);
   exit(1);
  }
 }




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
   char zerobuf[1024];

   MemSet(zerobuf, 0, sizeof(zerobuf));

   if (basetablespace && writerecoveryconf)
   {
    char header[512];
    if (!found_postgresql_auto_conf || !is_recovery_guc_supported)
    {
     int padding;

     tarCreateHeader(header,
         is_recovery_guc_supported ? "postgresql.auto.conf" : "recovery.conf",
         ((void*)0),
         recoveryconfcontents->len,
         pg_file_create_mode, 04000, 02000,
         time(((void*)0)));

     padding = ((recoveryconfcontents->len + 511) & ~511) - recoveryconfcontents->len;

     WRITE_TAR_DATA(header, sizeof(header));
     WRITE_TAR_DATA(recoveryconfcontents->data,
           recoveryconfcontents->len);
     if (padding)
      WRITE_TAR_DATA(zerobuf, padding);
    }





    if (is_recovery_guc_supported)
    {
     tarCreateHeader(header, "standby.signal", ((void*)0),
         0,
         pg_file_create_mode, 04000, 02000,
         time(((void*)0)));

     WRITE_TAR_DATA(header, sizeof(header));
     WRITE_TAR_DATA(zerobuf, 511);
    }
   }


   WRITE_TAR_DATA(zerobuf, sizeof(zerobuf));
   {
    if (strcmp(basedir, "-") != 0)
    {
     if (fclose(tarfile) != 0)
     {
      pg_log_error("could not close file \"%s\": %m",
          filename);
      exit(1);
     }
    }
   }

   break;
  }
  else if (r == -2)
  {
   pg_log_error("could not read COPY data: %s",
       PQerrorMessage(conn));
   exit(1);
  }

  if (!writerecoveryconf || !basetablespace)
  {





   WRITE_TAR_DATA(copybuf, r);
  }
  else
  {
   int rr = r;
   int pos = 0;

   while (rr > 0)
   {
    if (in_tarhdr)
    {




     if (tarhdrsz < 512)
     {





      int hdrleft;
      int bytes2copy;

      hdrleft = 512 - tarhdrsz;
      bytes2copy = (rr > hdrleft ? hdrleft : rr);

      memcpy(&tarhdr[tarhdrsz], copybuf + pos, bytes2copy);

      rr -= bytes2copy;
      pos += bytes2copy;
      tarhdrsz += bytes2copy;
     }
     else
     {
      if (is_recovery_guc_supported)
      {
       skip_file = (strcmp(&tarhdr[0], "standby.signal") == 0);
       is_postgresql_auto_conf = (strcmp(&tarhdr[0], "postgresql.auto.conf") == 0);
      }
      else
       skip_file = (strcmp(&tarhdr[0], "recovery.conf") == 0);

      filesz = read_tar_number(&tarhdr[124], 12);
      file_padding_len = ((filesz + 511) & ~511) - filesz;

      if (is_recovery_guc_supported &&
       is_postgresql_auto_conf &&
       writerecoveryconf)
      {

       char header[512];

       tarCreateHeader(header, "postgresql.auto.conf", ((void*)0),
           filesz + recoveryconfcontents->len,
           pg_file_create_mode, 04000, 02000,
           time(((void*)0)));

       WRITE_TAR_DATA(header, sizeof(header));
      }
      else
      {

       filesz += file_padding_len;

       if (!skip_file)
       {




        WRITE_TAR_DATA(tarhdr, 512);
       }
      }


      in_tarhdr = 0;
     }
    }
    else
    {



     if (filesz > 0)
     {



      int bytes2write;

      bytes2write = (filesz > rr ? rr : filesz);

      if (!skip_file)
       WRITE_TAR_DATA(copybuf + pos, bytes2write);

      rr -= bytes2write;
      pos += bytes2write;
      filesz -= bytes2write;
     }
     else if (is_recovery_guc_supported &&
        is_postgresql_auto_conf &&
        writerecoveryconf)
     {

      int padding;
      int tailsize;

      tailsize = (512 - file_padding_len) + recoveryconfcontents->len;
      padding = ((tailsize + 511) & ~511) - tailsize;

      WRITE_TAR_DATA(recoveryconfcontents->data, recoveryconfcontents->len);

      if (padding)
      {
       char zerobuf[512];

       MemSet(zerobuf, 0, sizeof(zerobuf));
       WRITE_TAR_DATA(zerobuf, padding);
      }


      is_postgresql_auto_conf = 0;
      skip_file = 1;
      filesz += file_padding_len;

      found_postgresql_auto_conf = 1;
     }
     else
     {




      in_tarhdr = 1;
      skip_file = 0;
      is_postgresql_auto_conf = 0;
      tarhdrsz = 0;
      filesz = 0;
     }
    }
   }
  }
  totaldone += r;
  progress_report(rownum, filename, 0);
 }
 progress_report(rownum, filename, 1);

 if (copybuf != ((void*)0))
  PQfreemem(copybuf);





}
