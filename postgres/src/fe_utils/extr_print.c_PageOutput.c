
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct winsize {int ws_row; } ;
struct TYPE_3__ {unsigned short pager; int pager_min_lines; } ;
typedef TYPE_1__ printTableOpt ;
typedef int FILE ;


 char* DEFAULT_PAGER ;
 int TIOCGWINSZ ;
 int disable_sigpipe_trap () ;
 int fileno (int *) ;
 char* getenv (char*) ;
 int ioctl (int ,int ,struct winsize*) ;
 scalar_t__ isatty (int ) ;
 int * popen (char const*,char*) ;
 int restore_sigpipe_trap () ;
 int * stdin ;
 int * stdout ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strspn (char const*,char*) ;

FILE *
PageOutput(int lines, const printTableOpt *topt)
{

 if (topt && topt->pager && isatty(fileno(stdin)) && isatty(fileno(stdout)))
 {
  {
   const char *pagerprog;
   FILE *pagerpipe;

   pagerprog = getenv("PSQL_PAGER");
   if (!pagerprog)
    pagerprog = getenv("PAGER");
   if (!pagerprog)
    pagerprog = DEFAULT_PAGER;
   else
   {

    if (strspn(pagerprog, " \t\r\n") == strlen(pagerprog))
     return stdout;
   }
   disable_sigpipe_trap();
   pagerpipe = popen(pagerprog, "w");
   if (pagerpipe)
    return pagerpipe;

   restore_sigpipe_trap();
  }
 }

 return stdout;
}
