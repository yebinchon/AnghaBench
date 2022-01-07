
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;

__attribute__((used)) static const char *skip_comment_py(const char *code) {
 if (*code != '#') {
  return code;
 }
 char *end = strchr (code, '\n');
 if (end) {
  code = end;
 }
 return code + 1;
}
