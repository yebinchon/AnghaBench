
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eprintf (char*) ;
 char* strchr (char const*,char) ;
 int strncmp (char const*,char*,int) ;
 char* strstr (char const*,char*) ;

const char *skip_comment_c(const char *code) {
 if (!strncmp (code, "/*", 2)) {
  char *end = strstr (code, "*/");
  if (end) {
   code = end + 2;
  } else {
   eprintf ("Missing closing comment\n");
  }
 } else if (!strncmp (code, "//", 2)) {
  char *end = strchr (code, '\n');
  if (end) {
   code = end + 2;
  }
 }
 return code;
}
