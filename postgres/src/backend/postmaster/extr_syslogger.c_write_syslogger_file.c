
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int LOG_DESTINATION_CSVLOG ;
 int * csvlogFile ;
 int errno ;
 int fwrite (char const*,int,int,int *) ;
 int strerror (int ) ;
 int * syslogFile ;
 int write_stderr (char*,int ) ;

void
write_syslogger_file(const char *buffer, int count, int destination)
{
 int rc;
 FILE *logfile;
 logfile = (destination == LOG_DESTINATION_CSVLOG &&
      csvlogFile != ((void*)0)) ? csvlogFile : syslogFile;

 rc = fwrite(buffer, 1, count, logfile);







 if (rc != count)
  write_stderr("could not write to log file: %s\n", strerror(errno));
}
