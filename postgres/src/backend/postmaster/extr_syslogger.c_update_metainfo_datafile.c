
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;
typedef int FILE ;


 scalar_t__ ENOENT ;
 int LOG ;
 int LOG_DESTINATION_CSVLOG ;
 int LOG_DESTINATION_STDERR ;
 int LOG_METAINFO_DATAFILE ;
 int LOG_METAINFO_DATAFILE_TMP ;
 int Log_destination ;
 int PG_IOLBF ;
 int _O_TEXT ;
 int _fileno (int *) ;
 int _setmode (int ,int ) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,int ,...) ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 scalar_t__ fprintf (int *,char*,char*) ;
 char* last_csv_file_name ;
 char* last_file_name ;
 int pg_mode_mask ;
 scalar_t__ rename (int ,int ) ;
 int setvbuf (int *,int *,int ,int ) ;
 int umask (int ) ;
 scalar_t__ unlink (int ) ;

__attribute__((used)) static void
update_metainfo_datafile(void)
{
 FILE *fh;
 mode_t oumask;

 if (!(Log_destination & LOG_DESTINATION_STDERR) &&
  !(Log_destination & LOG_DESTINATION_CSVLOG))
 {
  if (unlink(LOG_METAINFO_DATAFILE) < 0 && errno != ENOENT)
   ereport(LOG,
     (errcode_for_file_access(),
      errmsg("could not remove file \"%s\": %m",
       LOG_METAINFO_DATAFILE)));
  return;
 }


 oumask = umask(pg_mode_mask);
 fh = fopen(LOG_METAINFO_DATAFILE_TMP, "w");
 umask(oumask);

 if (fh)
 {
  setvbuf(fh, ((void*)0), PG_IOLBF, 0);





 }
 else
 {
  ereport(LOG,
    (errcode_for_file_access(),
     errmsg("could not open file \"%s\": %m",
      LOG_METAINFO_DATAFILE_TMP)));
  return;
 }

 if (last_file_name && (Log_destination & LOG_DESTINATION_STDERR))
 {
  if (fprintf(fh, "stderr %s\n", last_file_name) < 0)
  {
   ereport(LOG,
     (errcode_for_file_access(),
      errmsg("could not write file \"%s\": %m",
       LOG_METAINFO_DATAFILE_TMP)));
   fclose(fh);
   return;
  }
 }

 if (last_csv_file_name && (Log_destination & LOG_DESTINATION_CSVLOG))
 {
  if (fprintf(fh, "csvlog %s\n", last_csv_file_name) < 0)
  {
   ereport(LOG,
     (errcode_for_file_access(),
      errmsg("could not write file \"%s\": %m",
       LOG_METAINFO_DATAFILE_TMP)));
   fclose(fh);
   return;
  }
 }
 fclose(fh);

 if (rename(LOG_METAINFO_DATAFILE_TMP, LOG_METAINFO_DATAFILE) != 0)
  ereport(LOG,
    (errcode_for_file_access(),
     errmsg("could not rename file \"%s\" to \"%s\": %m",
      LOG_METAINFO_DATAFILE_TMP, LOG_METAINFO_DATAFILE)));
}
