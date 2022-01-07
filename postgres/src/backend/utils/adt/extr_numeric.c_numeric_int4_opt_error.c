
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int NumericVar ;
typedef int Numeric ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE ;
 int ERROR ;
 scalar_t__ NUMERIC_IS_NAN (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int init_var_from_num (int ,int *) ;
 int numericvar_to_int32 (int *,int *) ;

int32
numeric_int4_opt_error(Numeric num, bool *have_error)
{
 NumericVar x;
 int32 result;

 if (have_error)
  *have_error = 0;


 if (NUMERIC_IS_NAN(num))
 {
  if (have_error)
  {
   *have_error = 1;
   return 0;
  }
  else
  {
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("cannot convert NaN to integer")));
  }
 }


 init_var_from_num(num, &x);

 if (!numericvar_to_int32(&x, &result))
 {
  if (have_error)
  {
   *have_error = 1;
   return 0;
  }
  else
  {
   ereport(ERROR,
     (errcode(ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE),
      errmsg("integer out of range")));
  }
 }

 return result;
}
