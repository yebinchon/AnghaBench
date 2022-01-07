
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 int mrb_bool_value (int ) ;
 int mrb_get_args (int *,char*,char const**,int *,char const**,int *) ;
 int str_match_p (int *,char const*,int ,char const*,int ) ;

__attribute__((used)) static mrb_value
m_str_match_p(mrb_state *mrb, mrb_value self)
{
  const char *pat, *str;
  mrb_int pat_len, str_len;

  mrb_get_args(mrb, "ss", &pat, &pat_len, &str, &str_len);
  return mrb_bool_value(str_match_p(mrb, pat, pat_len, str, str_len));
}
