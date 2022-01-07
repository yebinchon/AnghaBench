
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int trgm ;
typedef int TRGM ;


 int ARRNELEM (int *) ;
 int CMPTRGM (int *,int *) ;
 int * GETARR (int *) ;

bool
trgm_contained_by(TRGM *trg1, TRGM *trg2)
{
 trgm *ptr1,
      *ptr2;
 int len1,
    len2;

 ptr1 = GETARR(trg1);
 ptr2 = GETARR(trg2);

 len1 = ARRNELEM(trg1);
 len2 = ARRNELEM(trg2);

 while (ptr1 - GETARR(trg1) < len1 && ptr2 - GETARR(trg2) < len2)
 {
  int res = CMPTRGM(ptr1, ptr2);

  if (res < 0)
   return 0;
  else if (res > 0)
   ptr2++;
  else
  {
   ptr1++;
   ptr2++;
  }
 }
 if (ptr1 - GETARR(trg1) < len1)
  return 0;
 else
  return 1;
}
