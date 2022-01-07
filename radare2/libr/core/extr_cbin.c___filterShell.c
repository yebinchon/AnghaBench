
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (scalar_t__) ;
 int r_return_val_if_fail (char const*,int *) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static char *__filterShell(const char *arg) {
 r_return_val_if_fail (arg, ((void*)0));
 char *a = malloc (strlen (arg) + 1);
 if (!a) {
  return ((void*)0);
 }
 char *b = a;
 while (*arg) {
  char ch = *arg;
  switch (ch) {
  case '@':
  case '`':
  case '|':
  case ';':
  case '=':
  case '\n':
   break;
  default:
   *b++ = ch;
   break;
  }
  arg++;
 }
 *b = 0;
 return a;
}
