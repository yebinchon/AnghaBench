
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static int php_opt_error(int argc, char * const *argv, int oint, int optchr, int err, int show_err)
{
 if (show_err)
 {
  fprintf(stderr, "Error in argument %d, char %d: ", oint, optchr+1);
  switch(err)
  {
  case 129:
   fprintf(stderr, ": in flags\n");
   break;
  case 128:
   fprintf(stderr, "option not found %c\n", argv[oint][optchr]);
   break;
  case 130:
   fprintf(stderr, "no argument for option %c\n", argv[oint][optchr]);
   break;
  default:
   fprintf(stderr, "unknown\n");
   break;
  }
 }
 return('?');
}
