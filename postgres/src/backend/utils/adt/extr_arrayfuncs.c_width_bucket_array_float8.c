
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ float8 ;
typedef int Datum ;
typedef int ArrayType ;


 scalar_t__ ARR_DATA_PTR (int *) ;
 int ARR_DIMS (int *) ;
 int ARR_NDIM (int *) ;
 int ArrayGetNItems (int ,int ) ;
 scalar_t__ DatumGetFloat8 (int ) ;
 scalar_t__ isnan (scalar_t__) ;

__attribute__((used)) static int
width_bucket_array_float8(Datum operand, ArrayType *thresholds)
{
 float8 op = DatumGetFloat8(operand);
 float8 *thresholds_data;
 int left;
 int right;





 thresholds_data = (float8 *) ARR_DATA_PTR(thresholds);

 left = 0;
 right = ArrayGetNItems(ARR_NDIM(thresholds), ARR_DIMS(thresholds));
 if (isnan(op))
  return right;


 while (left < right)
 {
  int mid = (left + right) / 2;

  if (isnan(thresholds_data[mid]) || op < thresholds_data[mid])
   right = mid;
  else
   left = mid + 1;
 }

 return left;
}
