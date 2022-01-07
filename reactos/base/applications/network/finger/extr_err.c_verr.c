
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 char* __progname ;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 char* strerror (int) ;
 int vfprintf (int ,char const*,int ) ;

void
verr(int eval, const char *fmt, va_list ap)
{
 int sverrno;

 sverrno = errno;
 (void)fprintf(stderr, "%s: ", __progname);
 if (fmt != ((void*)0)) {
  (void)vfprintf(stderr, fmt, ap);
  (void)fprintf(stderr, ": ");
 }
 (void)fprintf(stderr, "%s\n", strerror(sverrno));
 exit(eval);
}
