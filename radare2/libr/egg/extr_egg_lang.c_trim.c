
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_space (char) ;

__attribute__((used)) static char *trim(char *s) {
 char *o;
 for (o = s; *o; o++) {
  if (is_space (*o)) {
   *o = 0;
  }
 }
 return s;
}
