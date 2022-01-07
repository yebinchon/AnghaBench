
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int errno ;
 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 char* progname ;
 int stderr ;
 char* strerror (int) ;
 int vfprintf (int ,char const*,int ) ;

void
errmsgv(int syserr, const char *fmt, va_list arg_ptr)
{
 int save = errno;

 fflush(0);
 fprintf(stderr, "[%s] Error: ", progname);
 vfprintf(stderr, fmt, arg_ptr);
 if (syserr != 0) {
  fprintf(stderr, ": %s", strerror(save));
 }
 fprintf(stderr, "\n");
}
