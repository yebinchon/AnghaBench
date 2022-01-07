
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __appendString (char const*,void*) ;
 int free (char*) ;
 char* malloc (int) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void __errorFunc(void *opaque, const char *msg) {
 __appendString (msg, opaque);
 char **p = (char **)opaque;
 if (p && *p) {
  int n = strlen(*p);
  char *ptr = malloc (n + 2);
  if (!ptr) {
   return;
  }
  strcpy (ptr, *p);
  ptr[n] = '\n';
  ptr[n + 1] = 0;
  free (*p);
  *p = ptr;
 }
}
