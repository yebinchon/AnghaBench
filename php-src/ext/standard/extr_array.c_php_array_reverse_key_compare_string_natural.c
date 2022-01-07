
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int php_array_key_compare_string_natural_general (void const*,void const*,int ) ;

__attribute__((used)) static int php_array_reverse_key_compare_string_natural(const void *a, const void *b)
{
 return php_array_key_compare_string_natural_general(b, a, 0);
}
