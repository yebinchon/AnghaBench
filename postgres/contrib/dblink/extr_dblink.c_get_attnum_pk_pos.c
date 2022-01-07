
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
get_attnum_pk_pos(int *pkattnums, int pknumatts, int key)
{
 int i;




 for (i = 0; i < pknumatts; i++)
  if (key == pkattnums[i])
   return i;

 return -1;
}
