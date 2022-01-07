
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SIZE_T ;
typedef int PVOID ;
typedef void** PBYTE ;
typedef void* BYTE ;



void kull_m_memory_reverseBytes(PVOID start, SIZE_T size)
{
 PBYTE lo = (PBYTE) start, hi = lo + size - 1;
 BYTE swap;
 while (lo < hi)
 {
  swap = *lo;
  *lo++ = *hi;
  *hi-- = swap;
 }
}
