
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int trgm ;
typedef int float4 ;
typedef int TRGM ;


 int ARRNELEM (int *) ;
 int CALCSML (int,int,int) ;
 int CMPTRGM (int *,int *) ;
 int * GETARR (int *) ;

float4
cnt_sml(TRGM *trg1, TRGM *trg2, bool inexact)
{
 trgm *ptr1,
      *ptr2;
 int count = 0;
 int len1,
    len2;

 ptr1 = GETARR(trg1);
 ptr2 = GETARR(trg2);

 len1 = ARRNELEM(trg1);
 len2 = ARRNELEM(trg2);


 if (len1 <= 0 || len2 <= 0)
  return (float4) 0.0;

 while (ptr1 - GETARR(trg1) < len1 && ptr2 - GETARR(trg2) < len2)
 {
  int res = CMPTRGM(ptr1, ptr2);

  if (res < 0)
   ptr1++;
  else if (res > 0)
   ptr2++;
  else
  {
   ptr1++;
   ptr2++;
   count++;
  }
 }






 return CALCSML(count, len1, inexact ? count : len2);
}
