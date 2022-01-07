
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
freeBlocks_cmp(const void *a, const void *b)
{
 long ablk = *((const long *) a);
 long bblk = *((const long *) b);


 if (ablk < bblk)
  return 1;
 if (ablk > bblk)
  return -1;
 return 0;
}
