
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _escape (char const*,int) ;
 int free (char*) ;
 int printf (char*,char*,char*) ;
 size_t strlen (char const*) ;

void _strfail(const char *a, const char *e, int len) {
  char *ae, *ee;
  if (len < 0) {
    len = strlen(a);
    if (strlen(e) > (size_t) len) len = strlen(e);
  }
  ae = _escape(a, len);
  ee = _escape(e, len);
  printf("Expected: %s\nActual  : %s\n", ee, ae);
  free(ae);
  free(ee);
}
