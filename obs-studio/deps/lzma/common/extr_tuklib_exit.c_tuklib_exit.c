
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 int errno ;
 int exit (int) ;
 int fclose (int ) ;
 int ferror (int ) ;
 int fprintf (int ,char*,char*,char*,char*) ;
 char* progname ;
 int stderr ;
 int stdout ;
 char* strerror (int ) ;

extern void
tuklib_exit(int status, int err_status, int show_error)
{
 if (status != err_status) {


  const int ferror_err = ferror(stdout);
  const int fclose_err = fclose(stdout);
  if (ferror_err || fclose_err) {
   status = err_status;




   if (show_error)
    fprintf(stderr, "%s: %s: %s\n", progname,
      _("Writing to standard "
       "output failed"),
      fclose_err ? strerror(errno)
       : _("Unknown error"));
  }
 }

 if (status != err_status) {



  const int ferror_err = ferror(stderr);
  const int fclose_err = fclose(stderr);
  if (fclose_err || ferror_err)
   status = err_status;
 }

 exit(status);
}
