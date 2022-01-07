
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_bool ;
typedef int FILE ;


 int FALSE ;
 int TRUE ;
 int fgetc (int *) ;
 size_t strlen (char*) ;
 int ungetc (int,int *) ;

__attribute__((used)) static mrb_bool
remove_newlines(char *s, FILE *fp)
{
  int c;
  char *p;
  size_t len;

  if ((len = strlen(s)) == 0) {
    return FALSE;
  }

  p = s + len - 1;

  if (*p != '\r' && *p != '\n') {
    return FALSE;
  }

  if (*p == '\r') {

    if ((c = fgetc(fp)) != '\n') {
      ungetc(c, fp);
    }
  }


  while (s <= p && (*p == '\r' || *p == '\n')) {
    *p-- = '\0';
  }

  return TRUE;
}
