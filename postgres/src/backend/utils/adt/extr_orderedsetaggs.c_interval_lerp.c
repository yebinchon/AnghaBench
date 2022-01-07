
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int DirectFunctionCall2 (int ,int ,int ) ;
 int Float8GetDatumFast (double) ;
 int interval_mi ;
 int interval_mul ;
 int interval_pl ;

__attribute__((used)) static Datum
interval_lerp(Datum lo, Datum hi, double pct)
{
 Datum diff_result = DirectFunctionCall2(interval_mi, hi, lo);
 Datum mul_result = DirectFunctionCall2(interval_mul,
             diff_result,
             Float8GetDatumFast(pct));

 return DirectFunctionCall2(interval_pl, mul_result, lo);
}
