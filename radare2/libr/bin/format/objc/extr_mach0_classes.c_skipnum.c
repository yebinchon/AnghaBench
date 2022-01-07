
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_DIGIT (char const) ;

__attribute__((used)) static const char *skipnum(const char *s) {
 while (IS_DIGIT (*s)) {
  s++;
 }
 return s;
}
