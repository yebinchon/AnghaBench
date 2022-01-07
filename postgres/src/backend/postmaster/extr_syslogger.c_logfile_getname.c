
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pg_time_t ;


 char* Log_directory ;
 int Log_filename ;
 scalar_t__ MAXPGPATH ;
 int log_timezone ;
 char* palloc (scalar_t__) ;
 int pg_localtime (int *,int ) ;
 int pg_strftime (char*,scalar_t__,int ,int ) ;
 int snprintf (char*,scalar_t__,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlcpy (char*,char const*,scalar_t__) ;
 int strlen (char*) ;

__attribute__((used)) static char *
logfile_getname(pg_time_t timestamp, const char *suffix)
{
 char *filename;
 int len;

 filename = palloc(MAXPGPATH);

 snprintf(filename, MAXPGPATH, "%s/", Log_directory);

 len = strlen(filename);


 pg_strftime(filename + len, MAXPGPATH - len, Log_filename,
    pg_localtime(&timestamp, log_timezone));

 if (suffix != ((void*)0))
 {
  len = strlen(filename);
  if (len > 4 && (strcmp(filename + (len - 4), ".log") == 0))
   len -= 4;
  strlcpy(filename + len, suffix, MAXPGPATH - len);
 }

 return filename;
}
