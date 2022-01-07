
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;
typedef int FILE ;


 int FATAL ;
 int LOG ;
 int Log_file_mode ;
 int PG_IOLBF ;
 int S_IRWXG ;
 int S_IRWXO ;
 int S_IRWXU ;
 int S_IWUSR ;
 int _O_TEXT ;
 int _fileno (int *) ;
 int _setmode (int ,int ) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char const*) ;
 int errno ;
 int * fopen (char const*,char const*) ;
 int setvbuf (int *,int *,int ,int ) ;
 int umask (int ) ;

__attribute__((used)) static FILE *
logfile_open(const char *filename, const char *mode, bool allow_errors)
{
 FILE *fh;
 mode_t oumask;





 oumask = umask((mode_t) ((~(Log_file_mode | S_IWUSR)) & (S_IRWXU | S_IRWXG | S_IRWXO)));
 fh = fopen(filename, mode);
 umask(oumask);

 if (fh)
 {
  setvbuf(fh, ((void*)0), PG_IOLBF, 0);





 }
 else
 {
  int save_errno = errno;

  ereport(allow_errors ? LOG : FATAL,
    (errcode_for_file_access(),
     errmsg("could not open log file \"%s\": %m",
      filename)));
  errno = save_errno;
 }

 return fh;
}
