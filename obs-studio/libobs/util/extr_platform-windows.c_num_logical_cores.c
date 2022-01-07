
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG_PTR ;
typedef int DWORD ;



DWORD num_logical_cores(ULONG_PTR mask)
{
 DWORD left_shift = sizeof(ULONG_PTR) * 8 - 1;
 DWORD bit_set_count = 0;
 ULONG_PTR bit_test = (ULONG_PTR)1 << left_shift;

 for (DWORD i = 0; i <= left_shift; ++i) {
  bit_set_count += ((mask & bit_test) ? 1 : 0);
  bit_test /= 2;
 }

 return bit_set_count;
}
