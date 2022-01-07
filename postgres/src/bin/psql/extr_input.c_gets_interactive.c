
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PQExpBuffer ;


 int fflush (int ) ;
 int fputs (char const*,int ) ;
 char* gets_fromFile (int ) ;
 char* readline (char*) ;
 int rl_reset_screen_size () ;
 int sigint_interrupt_enabled ;
 int stdin ;
 int stdout ;
 int * tab_completion_query_buf ;
 scalar_t__ useReadline ;

char *
gets_interactive(const char *prompt, PQExpBuffer query_buf)
{
 fputs(prompt, stdout);
 fflush(stdout);
 return gets_fromFile(stdin);
}
