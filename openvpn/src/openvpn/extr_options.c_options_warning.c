
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int options_warning_safe (char*,char const*,scalar_t__) ;
 scalar_t__ strlen (char*) ;

void
options_warning(char *actual, const char *expected)
{
    options_warning_safe(actual, expected, strlen(actual) + 1);
}
