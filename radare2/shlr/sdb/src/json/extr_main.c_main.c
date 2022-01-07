
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int Rangstr ;


 char* api_json_set (char*,char*,char*) ;
 int fread (char*,int,int,int ) ;
 int free (char*) ;
 int json_get (char*,char*) ;
 int json_geti (char*,char*) ;
 char* json_seti (char*,char*,...) ;
 int printf (char*,...) ;
 int rangstr_print (int *) ;
 char* sdb_json_indent (char*,char*) ;
 char* sdb_json_unindent (char*) ;
 int stdin ;

int main(int argc, char **argv) {
 Rangstr rs;
 char buf[4096];
 int n = fread (buf, 1, sizeof (buf), stdin);
 buf[n] = 0;


 char *path = argv[1];


 printf (">>>> %s <<<<\n", sdb_json_unindent (buf));
 printf (">>>> %s <<<<\n", sdb_json_indent (buf, "  "));

 path = "glossary.title";
 char *s = api_json_set (buf, path, "patata");
 if (s) {
  printf ("%s\n", s);
  free (s);
 } else printf ("set failed\n");
 path = argv[1];
 rs = json_get (buf, path);
 printf ("-- output --\n");
 rangstr_print(&rs);
 printf ("\n");
 return 0;
}
