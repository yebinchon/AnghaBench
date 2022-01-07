
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pg_time_t ;
typedef int FILE ;


 scalar_t__ EMFILE ;
 scalar_t__ ENFILE ;
 int LOG ;
 int LOG_DESTINATION_CSVLOG ;
 int LOG_DESTINATION_STDERR ;
 int Log_destination ;
 scalar_t__ Log_truncate_on_rotation ;
 int * csvlogFile ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;
 scalar_t__ errno ;
 int fclose (int *) ;
 char* last_csv_file_name ;
 char* last_file_name ;
 char* logfile_getname (int ,char*) ;
 int * logfile_open (char*,char*,int) ;
 int next_rotation_time ;
 int pfree (char*) ;
 int rotation_disabled ;
 int rotation_requested ;
 int set_next_rotation_time () ;
 scalar_t__ strcmp (char*,char*) ;
 int * syslogFile ;
 int time (int *) ;
 int update_metainfo_datafile () ;

__attribute__((used)) static void
logfile_rotate(bool time_based_rotation, int size_rotation_for)
{
 char *filename;
 char *csvfilename = ((void*)0);
 pg_time_t fntime;
 FILE *fh;

 rotation_requested = 0;






 if (time_based_rotation)
  fntime = next_rotation_time;
 else
  fntime = time(((void*)0));
 filename = logfile_getname(fntime, ((void*)0));
 if (Log_destination & LOG_DESTINATION_CSVLOG)
  csvfilename = logfile_getname(fntime, ".csv");
 if (time_based_rotation || (size_rotation_for & LOG_DESTINATION_STDERR))
 {
  if (Log_truncate_on_rotation && time_based_rotation &&
   last_file_name != ((void*)0) &&
   strcmp(filename, last_file_name) != 0)
   fh = logfile_open(filename, "w", 1);
  else
   fh = logfile_open(filename, "a", 1);

  if (!fh)
  {






   if (errno != ENFILE && errno != EMFILE)
   {
    ereport(LOG,
      (errmsg("disabling automatic rotation (use SIGHUP to re-enable)")));
    rotation_disabled = 1;
   }

   if (filename)
    pfree(filename);
   if (csvfilename)
    pfree(csvfilename);
   return;
  }

  fclose(syslogFile);
  syslogFile = fh;


  if (last_file_name != ((void*)0))
   pfree(last_file_name);
  last_file_name = filename;
  filename = ((void*)0);
 }
 if ((Log_destination & LOG_DESTINATION_CSVLOG) &&
  (csvlogFile == ((void*)0) ||
   time_based_rotation || (size_rotation_for & LOG_DESTINATION_CSVLOG)))
 {
  if (Log_truncate_on_rotation && time_based_rotation &&
   last_csv_file_name != ((void*)0) &&
   strcmp(csvfilename, last_csv_file_name) != 0)
   fh = logfile_open(csvfilename, "w", 1);
  else
   fh = logfile_open(csvfilename, "a", 1);

  if (!fh)
  {






   if (errno != ENFILE && errno != EMFILE)
   {
    ereport(LOG,
      (errmsg("disabling automatic rotation (use SIGHUP to re-enable)")));
    rotation_disabled = 1;
   }

   if (filename)
    pfree(filename);
   if (csvfilename)
    pfree(csvfilename);
   return;
  }

  if (csvlogFile != ((void*)0))
   fclose(csvlogFile);
  csvlogFile = fh;


  if (last_csv_file_name != ((void*)0))
   pfree(last_csv_file_name);
  last_csv_file_name = csvfilename;
  csvfilename = ((void*)0);
 }
 else if (!(Log_destination & LOG_DESTINATION_CSVLOG) &&
    csvlogFile != ((void*)0))
 {

  fclose(csvlogFile);
  csvlogFile = ((void*)0);
  if (last_csv_file_name != ((void*)0))
   pfree(last_csv_file_name);
  last_csv_file_name = ((void*)0);
 }

 if (filename)
  pfree(filename);
 if (csvfilename)
  pfree(csvfilename);

 update_metainfo_datafile();

 set_next_rotation_time();
}
