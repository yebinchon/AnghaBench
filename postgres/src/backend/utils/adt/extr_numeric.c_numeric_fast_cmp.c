
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SortSupport ;
typedef scalar_t__ Pointer ;
typedef scalar_t__ Numeric ;
typedef int Datum ;


 scalar_t__ DatumGetNumeric (int ) ;
 scalar_t__ DatumGetPointer (int ) ;
 int cmp_numerics (scalar_t__,scalar_t__) ;
 int pfree (scalar_t__) ;

__attribute__((used)) static int
numeric_fast_cmp(Datum x, Datum y, SortSupport ssup)
{
 Numeric nx = DatumGetNumeric(x);
 Numeric ny = DatumGetNumeric(y);
 int result;

 result = cmp_numerics(nx, ny);

 if ((Pointer) nx != DatumGetPointer(x))
  pfree(nx);
 if ((Pointer) ny != DatumGetPointer(y))
  pfree(ny);

 return result;
}
