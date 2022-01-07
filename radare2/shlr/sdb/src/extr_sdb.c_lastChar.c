
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;

__attribute__((used)) static char lastChar(const char *str) {
 int len = strlen (str);
 return str[(len > 0)? len - 1: 0];
}
