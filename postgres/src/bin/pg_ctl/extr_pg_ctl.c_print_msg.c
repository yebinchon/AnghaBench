
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int fputs (char const*,int ) ;
 int silent_mode ;
 int stdout ;

__attribute__((used)) static void
print_msg(const char *msg)
{
 if (!silent_mode)
 {
  fputs(msg, stdout);
  fflush(stdout);
 }
}
