
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_WARN ;
 int options_warning_safe_ml (int ,char*,char const*,size_t) ;

void
options_warning_safe(char *actual, const char *expected, size_t actual_n)
{
    options_warning_safe_ml(M_WARN, actual, expected, actual_n);
}
