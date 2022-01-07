
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int BYTE ;



__attribute__((used)) static int mem_cmp (const void* dst, const void* src, UINT cnt)
{
 const BYTE *d = (const BYTE *)dst, *s = (const BYTE *)src;
 int r = 0;

 do {
  r = *d++ - *s++;
 } while (--cnt && r == 0);

 return r;
}
