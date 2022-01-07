
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef size_t mrb_int ;


 int E_TYPE_ERROR ;
 int FALSE ;
 scalar_t__ MRB_RANGE_OK ;
 int mrb_ary_new (int *) ;
 int mrb_ary_push (int *,int ,int ) ;
 size_t mrb_fixnum (int const) ;
 scalar_t__ mrb_fixnum_p (int const) ;
 int mrb_nil_value () ;
 int mrb_raisef (int *,int ,char*,int const) ;
 scalar_t__ mrb_range_beg_len (int *,int const,size_t*,size_t*,size_t,int ) ;

mrb_value
mrb_get_values_at(mrb_state *mrb, mrb_value obj, mrb_int olen, mrb_int argc, const mrb_value *argv, mrb_value (*func)(mrb_state*, mrb_value, mrb_int))
{
  mrb_int i, j, beg, len;
  mrb_value result;
  result = mrb_ary_new(mrb);

  for (i = 0; i < argc; ++i) {
    if (mrb_fixnum_p(argv[i])) {
      mrb_ary_push(mrb, result, func(mrb, obj, mrb_fixnum(argv[i])));
    }
    else if (mrb_range_beg_len(mrb, argv[i], &beg, &len, olen, FALSE) == MRB_RANGE_OK) {
      mrb_int const end = olen < beg + len ? olen : beg + len;
      for (j = beg; j < end; ++j) {
        mrb_ary_push(mrb, result, func(mrb, obj, j));
      }

      for (; j < beg + len; ++j) {
        mrb_ary_push(mrb, result, mrb_nil_value());
      }
    }
    else {
      mrb_raisef(mrb, E_TYPE_ERROR, "invalid values selector: %v", argv[i]);
    }
  }

  return result;
}
