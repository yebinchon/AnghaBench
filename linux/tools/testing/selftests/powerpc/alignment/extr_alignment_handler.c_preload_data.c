
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void preload_data(void *dst, int offset, int width)
{
 char *c = dst;
 int i;

 c += offset;

 for (i = 0 ; i < width ; i++)
  c[i] = i;
}
