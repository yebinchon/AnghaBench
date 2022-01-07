
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int php_array_natural_general_compare (void const*,void const*,int) ;

__attribute__((used)) static int php_array_natural_case_compare(const void *a, const void *b)
{
 return php_array_natural_general_compare(a, b, 1);
}
