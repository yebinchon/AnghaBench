
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (scalar_t__) ;
 int r_return_val_if_fail (char const*,int *) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static char *__filterQuotedShell(const char *arg) {
 r_return_val_if_fail (arg, ((void*)0));
 char *a = malloc (strlen (arg) + 1);
 if (!a) {
  return ((void*)0);
 }
 char *b = a;
 while (*arg) {
  switch (*arg) {
  case ' ':
  case '=':
  case '"':
  case '\\':
  case '\r':
  case '\n':
   break;
  default:
   *b++ = *arg;
   break;
  }
  arg++;
 }
 *b = 0;
 return a;
}
