
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;
typedef scalar_t__ mrb_float ;


 int DROP_PRECISION (int,scalar_t__,scalar_t__) ;
 scalar_t__ MRB_INT_MAX ;
 scalar_t__ MRB_INT_MIN ;
 scalar_t__ mrb_fixnum (scalar_t__) ;
 scalar_t__ mrb_fixnum_p (scalar_t__) ;
 int mrb_get_args (int *,char*,scalar_t__*,scalar_t__*) ;
 scalar_t__ mrb_to_flo (int *,scalar_t__) ;
 scalar_t__ rational_new (int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static mrb_value
rational_s_new(mrb_state *mrb, mrb_value self)
{
  mrb_int numerator, denominator;
  mrb_value numv, denomv;

  mrb_get_args(mrb, "oo", &numv, &denomv);
  if (mrb_fixnum_p(numv)) {
    numerator = mrb_fixnum(numv);

    if (mrb_fixnum_p(denomv)) {
      denominator = mrb_fixnum(denomv);
    }
    else {
      mrb_float denomf = mrb_to_flo(mrb, denomv);

      do { while (denomf < MRB_INT_MIN || denomf > MRB_INT_MAX) { numerator /= 2; denomf /= 2; } } while (0);
      denominator = denomf;
    }
  }
  else {
    mrb_float numf = mrb_to_flo(mrb, numv);

    if (mrb_fixnum_p(denomv)) {
      denominator = mrb_fixnum(denomv);
    }
    else {
      mrb_float denomf = mrb_to_flo(mrb, denomv);

      do { while (denomf < MRB_INT_MIN || denomf > MRB_INT_MAX) { numf /= 2; denomf /= 2; } } while (0);
      denominator = denomf;
    }

    do { while (numf < MRB_INT_MIN || numf > MRB_INT_MAX) { numf /= 2; denominator /= 2; } } while (0);
    numerator = numf;
  }


  return rational_new(mrb, numerator, denominator);
}
