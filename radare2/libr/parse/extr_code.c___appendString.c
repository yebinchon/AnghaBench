
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 char* malloc (int) ;
 int printf (char*,char const*) ;
 int strcpy (char*,char const*) ;
 char* strdup (char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static void __appendString(const char *msg, char **s) {
 if (!s) {
  printf ("%s\n", msg);
 } else if (*s) {
  char *p = malloc (strlen (msg) + strlen (*s) + 1);
  if (p) {
   strcpy (p, *s);
   free (*s);
   *s = p;
   strcpy (p + strlen (p), msg);
  }
 } else {
  *s = strdup (msg);
 }
}
