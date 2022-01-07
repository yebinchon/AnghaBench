
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 double DatumGetFloat8 (int ) ;
 int Float8GetDatum (double) ;

__attribute__((used)) static Datum
float8_lerp(Datum lo, Datum hi, double pct)
{
 double loval = DatumGetFloat8(lo);
 double hival = DatumGetFloat8(hi);

 return Float8GetDatum(loval + (pct * (hival - loval)));
}
