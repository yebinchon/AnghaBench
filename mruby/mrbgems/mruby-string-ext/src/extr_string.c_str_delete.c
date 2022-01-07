
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct tr_pattern {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef size_t mrb_int ;
typedef scalar_t__ mrb_bool ;


 scalar_t__ FALSE ;
 int RSTRING (int ) ;
 size_t RSTRING_LEN (int ) ;
 char* RSTRING_PTR (int ) ;
 int RSTR_SET_LEN (int ,size_t) ;
 struct tr_pattern STATIC_TR_PATTERN ;
 scalar_t__ TRUE ;
 int mrb_str_modify (int *,int ) ;
 int mrb_str_ptr (int ) ;
 scalar_t__ tr_bitmap_detect (int *,char) ;
 int tr_compile_pattern (struct tr_pattern*,int ,int *) ;
 int tr_free_pattern (int *,struct tr_pattern*) ;
 int tr_parse_pattern (int *,struct tr_pattern*,int ,scalar_t__) ;

__attribute__((used)) static mrb_bool
str_delete(mrb_state *mrb, mrb_value str, mrb_value v_pat)
{
  struct tr_pattern pat = STATIC_TR_PATTERN;
  mrb_int i, j;
  char *s;
  mrb_int len;
  mrb_bool flag_changed = FALSE;
  uint8_t bitmap[32];

  mrb_str_modify(mrb, mrb_str_ptr(str));
  tr_parse_pattern(mrb, &pat, v_pat, TRUE);
  tr_compile_pattern(&pat, v_pat, bitmap);
  tr_free_pattern(mrb, &pat);

  s = RSTRING_PTR(str);
  len = RSTRING_LEN(str);

  for (i=j=0; i<len; i++,j++) {
    if (i>j) s[j] = s[i];
    if (tr_bitmap_detect(bitmap, s[i])) {
      flag_changed = TRUE;
      j--;
    }
  }
  if (flag_changed) {
    RSTR_SET_LEN(RSTRING(str), j);
    RSTRING_PTR(str)[j] = 0;
  }
  return flag_changed;
}
