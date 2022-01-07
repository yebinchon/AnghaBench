
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int php_array_key_compare_string_locale (void const*,void const*) ;

__attribute__((used)) static int php_array_reverse_key_compare_string_locale(const void *a, const void *b)
{
 return php_array_key_compare_string_locale(b, a);
}
