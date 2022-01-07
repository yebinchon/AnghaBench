
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64 ;
typedef scalar_t__ int32 ;
typedef int NumericVar ;


 int numericvar_to_int64 (int const*,scalar_t__*) ;

__attribute__((used)) static bool
numericvar_to_int32(const NumericVar *var, int32 *result)
{
 int64 val;

 if (!numericvar_to_int64(var, &val))
  return 0;


 *result = (int32) val;


 return ((int64) *result == val);
}
