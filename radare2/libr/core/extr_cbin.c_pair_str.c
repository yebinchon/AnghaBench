
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_MODE_JSON (int) ;
 int free (char*) ;
 int pair (char const*,char const*,int,int) ;
 char* r_str_escape_utf8_for_json (char const*,int) ;
 char* r_str_newf (char*,char*) ;

__attribute__((used)) static void pair_str(const char *key, const char *val, int mode, int last) {
 if (IS_MODE_JSON (mode)) {
  if (!val) {
   val = "";
  }
  char *encval = r_str_escape_utf8_for_json (val, -1);
  if (encval) {
   char *qs = r_str_newf ("\"%s\"", encval);
   pair (key, qs, mode, last);
   free (encval);
   free (qs);
  }
 } else {
  pair (key, val, mode, last);
 }
}
