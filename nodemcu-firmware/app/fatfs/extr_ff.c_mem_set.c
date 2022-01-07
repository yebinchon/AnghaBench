
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef scalar_t__ BYTE ;



__attribute__((used)) static void mem_set (void* dst, int val, UINT cnt)
{
 BYTE *d = (BYTE*)dst;

 do {
  *d++ = (BYTE)val;
 } while (--cnt);
}
