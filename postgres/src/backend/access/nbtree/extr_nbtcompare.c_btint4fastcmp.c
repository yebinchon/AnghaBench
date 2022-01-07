
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32 ;
typedef int SortSupport ;
typedef int Datum ;


 int A_GREATER_THAN_B ;
 int A_LESS_THAN_B ;
 scalar_t__ DatumGetInt32 (int ) ;

__attribute__((used)) static int
btint4fastcmp(Datum x, Datum y, SortSupport ssup)
{
 int32 a = DatumGetInt32(x);
 int32 b = DatumGetInt32(y);

 if (a > b)
  return A_GREATER_THAN_B;
 else if (a == b)
  return 0;
 else
  return A_LESS_THAN_B;
}
