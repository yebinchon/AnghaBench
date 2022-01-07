
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BITVEC ;


 int HASH (int ,int) ;

void
gensign(BITVEC sign, int *a, int len)
{
 int i;


 for (i = 0; i < len; i++)
 {
  HASH(sign, *a);
  a++;
 }
}
