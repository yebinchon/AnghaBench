
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SortSupport ;
typedef scalar_t__ Oid ;
typedef int Datum ;


 int A_GREATER_THAN_B ;
 int A_LESS_THAN_B ;
 scalar_t__ DatumGetObjectId (int ) ;

__attribute__((used)) static int
btoidfastcmp(Datum x, Datum y, SortSupport ssup)
{
 Oid a = DatumGetObjectId(x);
 Oid b = DatumGetObjectId(y);

 if (a > b)
  return A_GREATER_THAN_B;
 else if (a == b)
  return 0;
 else
  return A_LESS_THAN_B;
}
