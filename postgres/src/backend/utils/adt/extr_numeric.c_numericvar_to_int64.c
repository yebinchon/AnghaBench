
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_9__ {int ndigits; int weight; scalar_t__ sign; int * digits; } ;
typedef TYPE_1__ NumericVar ;
typedef int NumericDigit ;


 int Assert (int) ;
 int NBASE ;
 scalar_t__ NUMERIC_NEG ;
 int PG_INT64_MIN ;
 int free_var (TYPE_1__*) ;
 int init_var (TYPE_1__*) ;
 int pg_mul_s64_overflow (int ,int ,int *) ;
 int pg_sub_s64_overflow (int ,int ,int *) ;
 int round_var (TYPE_1__*,int ) ;
 int set_var_from_var (TYPE_1__ const*,TYPE_1__*) ;
 int strip_var (TYPE_1__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool
numericvar_to_int64(const NumericVar *var, int64 *result)
{
 NumericDigit *digits;
 int ndigits;
 int weight;
 int i;
 int64 val;
 bool neg;
 NumericVar rounded;


 init_var(&rounded);
 set_var_from_var(var, &rounded);
 round_var(&rounded, 0);


 strip_var(&rounded);
 ndigits = rounded.ndigits;
 if (ndigits == 0)
 {
  *result = 0;
  free_var(&rounded);
  return 1;
 }





 weight = rounded.weight;
 Assert(weight >= 0 && ndigits <= weight + 1);






 digits = rounded.digits;
 neg = (rounded.sign == NUMERIC_NEG);
 val = -digits[0];
 for (i = 1; i <= weight; i++)
 {
  if (unlikely(pg_mul_s64_overflow(val, NBASE, &val)))
  {
   free_var(&rounded);
   return 0;
  }

  if (i < ndigits)
  {
   if (unlikely(pg_sub_s64_overflow(val, digits[i], &val)))
   {
    free_var(&rounded);
    return 0;
   }
  }
 }

 free_var(&rounded);

 if (!neg)
 {
  if (unlikely(val == PG_INT64_MIN))
   return 0;
  val = -val;
 }
 *result = val;

 return 1;
}
