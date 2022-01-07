
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void *espconn_memcpy(void *dst, const void *src, size_t size, char *file, int line)
{
 char *psrc = ((void*)0);
 char *pdst = ((void*)0);

 if(((void*)0) == dst || ((void*)0) == src)
 {
  return ((void*)0);
 }

 if((src < dst) && (char *)src + size > (char *)dst)
 {
  psrc = (char *)src + size - 1;
  pdst = (char *)dst + size - 1;
  while(size--)
  {
   *pdst-- = *psrc--;
  }
 }
 else
 {
  psrc = (char *)src;
  pdst = (char *)dst;
  while(size--)
  {
   *pdst++ = *psrc++;
  }
 }

 return dst;

}
