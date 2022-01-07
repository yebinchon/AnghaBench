
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_DIGIT (char const) ;
 scalar_t__ r_str_endswith (char const*,char*) ;

__attribute__((used)) static bool is_valid_project_name(const char *name) {
 int i;
 if (r_str_endswith (name, ".zip")) {
  return 0;
 }
 for (i = 0; name[i]; i++) {
  switch (name[i]) {
  case '\\':
  case '.':
  case '_':
  case ':':
  case '-':
   continue;
  }
  if (name[i] >= 'a' && name[i] <= 'z') {
   continue;
  }
  if (name[i] >= 'A' && name[i] <= 'Z') {
   continue;
  }
  if (IS_DIGIT (name[i])) {
   continue;
  }
  return 0;
 }
 return 1;
}
