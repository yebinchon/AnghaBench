
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;







 int fflush (int ) ;
 int fputs (char*,int ) ;
 int stderr ;
 int vfprintf (int ,char const*,int ) ;

void gd_stderr_error(int priority, const char *format, va_list args)
{
 switch (priority) {
 case 131:
  fputs("GD Error: ", stderr);
  break;
 case 128:
  fputs("GD Warning: ", stderr);
  break;
 case 129:
  fputs("GD Notice: ", stderr);
  break;

 case 130:
  fputs("GD Info: ", stderr);
  break;
 case 132:
  fputs("GD Debug: ", stderr);
  break;

 }
 vfprintf(stderr, format, args);
 fflush(stderr);
}
