
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errcontext (char*,char*) ;

__attribute__((used)) static void
plperl_compile_callback(void *arg)
{
 char *procname = (char *) arg;

 if (procname)
  errcontext("compilation of PL/Perl function \"%s\"", procname);
}
