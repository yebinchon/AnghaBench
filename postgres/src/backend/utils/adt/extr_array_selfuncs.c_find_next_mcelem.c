
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TypeCacheEntry ;
typedef int Datum ;


 int element_compare (int *,int *,int *) ;

__attribute__((used)) static bool
find_next_mcelem(Datum *mcelem, int nmcelem, Datum value, int *index,
     TypeCacheEntry *typentry)
{
 int l = *index,
    r = nmcelem - 1,
    i,
    res;

 while (l <= r)
 {
  i = (l + r) / 2;
  res = element_compare(&mcelem[i], &value, typentry);
  if (res == 0)
  {
   *index = i;
   return 1;
  }
  else if (res < 0)
   l = i + 1;
  else
   r = i - 1;
 }
 *index = l;
 return 0;
}
