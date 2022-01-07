
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct tr_pattern {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef size_t mrb_int ;


 size_t RSTRING_LEN (int ) ;
 char* RSTRING_PTR (int ) ;
 struct tr_pattern STATIC_TR_PATTERN ;
 int TRUE ;
 int mrb_fixnum_value (size_t) ;
 int mrb_get_args (int *,char*,int *) ;
 int mrb_nil_value () ;
 scalar_t__ tr_bitmap_detect (int *,char) ;
 int tr_compile_pattern (struct tr_pattern*,int ,int *) ;
 int tr_free_pattern (int *,struct tr_pattern*) ;
 int tr_parse_pattern (int *,struct tr_pattern*,int ,int ) ;

__attribute__((used)) static mrb_value
mrb_str_count(mrb_state *mrb, mrb_value str)
{
  mrb_value v_pat = mrb_nil_value();
  mrb_int i;
  char *s;
  mrb_int len;
  mrb_int count = 0;
  struct tr_pattern pat = STATIC_TR_PATTERN;
  uint8_t bitmap[32];

  mrb_get_args(mrb, "S", &v_pat);
  tr_parse_pattern(mrb, &pat, v_pat, TRUE);
  tr_compile_pattern(&pat, v_pat, bitmap);
  tr_free_pattern(mrb, &pat);

  s = RSTRING_PTR(str);
  len = RSTRING_LEN(str);
  for (i = 0; i < len; i++) {
    if (tr_bitmap_detect(bitmap, s[i])) count++;
  }
  return mrb_fixnum_value(count);
}
