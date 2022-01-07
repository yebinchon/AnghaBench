
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_input (char*) ;
 int nselected ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static char confirm_force(bool selection)
{
 char str[64] = "forcibly remove current file (unrecoverable)? [y/Y confirms]";
 int r;

 if (selection)
  snprintf(str, 64, "forcibly remove %d file(s) (unrecoverable)? [y/Y confirms]", nselected);

 r = get_input(str);

 if (r == 'y' || r == 'Y')
  return 'f';
 return 'i';
}
