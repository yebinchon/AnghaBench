
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int recursion_depth ;

bool
in_error_recursion_trouble(void)
{

 return (recursion_depth > 2);
}
