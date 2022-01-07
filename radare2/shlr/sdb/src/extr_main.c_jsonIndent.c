
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int puts (char*) ;
 char* sdb_json_indent (char*,char*) ;
 char* stdin_slurp (int*) ;

__attribute__((used)) static int jsonIndent() {
 int len;
 char *out;
 char *in = stdin_slurp (&len);
 if (!in) {
  return 0;
 }
 out = sdb_json_indent (in, "  ");
 if (!out) {
  free (in);
  return 1;
 }
 puts (out);
 free (out);
 free (in);
 return 0;
}
