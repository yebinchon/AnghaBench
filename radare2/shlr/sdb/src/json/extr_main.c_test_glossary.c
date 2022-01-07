
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* api_json_get (char*,char*) ;
 char* api_json_set (char*,char*,char*) ;
 int free (char*) ;
 int printf (char*,...) ;

int test_glossary(char *buf) {
 char *path;
{
 path = "glossary.title";
 char *s= api_json_set (buf, path, "patata");
 if (s) {
  printf ("%s\n", s);
  free (s);
 } else printf ("set failed\n");
}
{
 path = "glossary.title";
 char *s= api_json_get (buf, path);
 if (s) {
  printf ("%s\n", s);
  free (s);
 } else printf ("set failed\n");
}
{
 path = "glossary.title";
 char *s= api_json_get (buf, path);
 if (s) {
  printf ("%s\n", s);
  free (s);
 } else printf ("set failed\n");
}
return 0;
}
