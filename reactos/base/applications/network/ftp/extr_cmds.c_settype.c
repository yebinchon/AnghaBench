
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct types {scalar_t__ t_name; char* t_arg; int t_type; int t_mode; } ;


 int COMPLETE ;
 int code ;
 int command (char*,int ,...) ;
 int fflush (int ) ;
 int printf (char*,...) ;
 int stdout ;
 scalar_t__ strcmp (char const*,scalar_t__) ;
 int strcpy (char*,scalar_t__) ;
 int type ;
 char* typename ;
 struct types* types ;

void settype(int argc, const char *argv[])
{
 register struct types *p;
 int comret;

 if (argc > 2) {
  const char *sep;

  printf("usage: %s [", argv[0]);
  sep = " ";
  for (p = types; p->t_name; p++) {
   printf("%s%s", sep, p->t_name);
   if (*sep == ' ')
    sep = " | ";
  }
  printf(" ]\n");
  (void) fflush(stdout);
  code = -1;
  return;
 }
 if (argc < 2) {
  printf("Using %s mode to transfer files.\n", typename);
  (void) fflush(stdout);
  code = 0;
  return;
 }
 for (p = types; p->t_name; p++)
  if (strcmp(argv[1], p->t_name) == 0)
   break;
 if (p->t_name == 0) {
  printf("%s: unknown mode\n", argv[1]);
  (void) fflush(stdout);
  code = -1;
  return;
 }
 if ((p->t_arg != ((void*)0)) && (*(p->t_arg) != '\0'))
  comret = command ("TYPE %s %s", p->t_mode, p->t_arg);
 else
  comret = command("TYPE %s", p->t_mode);
 if (comret == COMPLETE) {
  (void) strcpy(typename, p->t_name);
  type = p->t_type;
 }
}
