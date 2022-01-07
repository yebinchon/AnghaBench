
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timelib_sll ;


 int positive_mod (int,int) ;

__attribute__((used)) static timelib_sll century_value(timelib_sll j)
{
 return 6 - positive_mod(j, 4) * 2;
}
