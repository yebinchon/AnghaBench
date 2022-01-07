
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _strfail (char const*,char const*,size_t) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;

int _assert_streq_nz(const char *actual, const char *expected) {
  size_t n = strlen(expected);
  if (strncmp(actual, expected, n) != 0) {
    _strfail(actual, expected, n);
    return 0;
  }
  return 1;
}
