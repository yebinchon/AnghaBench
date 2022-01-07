
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int mrb_bool ;


 int FALSE ;
 scalar_t__ ISDIGIT (char) ;
 int TRUE ;
 int atoi (char*) ;

__attribute__((used)) static mrb_bool
parse_uint(char **sp, uint16_t *n)
{
  char *p;
  int i;

  if (*sp == ((void*)0) || **sp == '\0') {
    return FALSE;
  }

  for (p = *sp; *p != '\0' && ISDIGIT(*p); p++) ;

  if (p != *sp && (i = atoi(*sp)) >= 0) {
    *n = (uint16_t)i;
    *sp = p;
    return TRUE;
  }
  return FALSE;
}
