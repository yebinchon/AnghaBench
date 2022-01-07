
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int macaddr8 ;
typedef int int32 ;


 scalar_t__ hibits (int *) ;
 scalar_t__ lobits (int *) ;

__attribute__((used)) static int32
macaddr8_cmp_internal(macaddr8 *a1, macaddr8 *a2)
{
 if (hibits(a1) < hibits(a2))
  return -1;
 else if (hibits(a1) > hibits(a2))
  return 1;
 else if (lobits(a1) < lobits(a2))
  return -1;
 else if (lobits(a1) > lobits(a2))
  return 1;
 else
  return 0;
}
