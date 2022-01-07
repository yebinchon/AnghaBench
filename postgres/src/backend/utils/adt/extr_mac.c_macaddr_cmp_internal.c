
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int macaddr ;


 scalar_t__ hibits (int *) ;
 scalar_t__ lobits (int *) ;

__attribute__((used)) static int
macaddr_cmp_internal(macaddr *a1, macaddr *a2)
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
