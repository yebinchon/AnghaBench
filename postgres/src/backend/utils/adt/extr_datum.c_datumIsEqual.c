
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Size ;
typedef scalar_t__ Datum ;


 scalar_t__ DatumGetPointer (scalar_t__) ;
 scalar_t__ datumGetSize (scalar_t__,int,int) ;
 scalar_t__ memcmp (char*,char*,scalar_t__) ;

bool
datumIsEqual(Datum value1, Datum value2, bool typByVal, int typLen)
{
 bool res;

 if (typByVal)
 {






  res = (value1 == value2);
 }
 else
 {
  Size size1,
     size2;
  char *s1,
       *s2;




  size1 = datumGetSize(value1, typByVal, typLen);
  size2 = datumGetSize(value2, typByVal, typLen);
  if (size1 != size2)
   return 0;
  s1 = (char *) DatumGetPointer(value1);
  s2 = (char *) DatumGetPointer(value2);
  res = (memcmp(s1, s2, size1) == 0);
 }
 return res;
}
