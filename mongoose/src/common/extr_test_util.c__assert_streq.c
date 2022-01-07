
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _strfail (char const*,char const*,int) ;
 scalar_t__ strcmp (char const*,char const*) ;

int _assert_streq(const char *actual, const char *expected) {
  if (strcmp(actual, expected) != 0) {
    _strfail(actual, expected, -1);
    return 0;
  }
  return 1;
}
