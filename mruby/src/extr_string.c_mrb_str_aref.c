
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 int RSTRING_LEN (int ) ;




 int mrb_nil_p (int ) ;
 int mrb_nil_value () ;
 int mrb_str_byte_subseq (int *,int ,int ,int ) ;
 int mrb_str_dup (int *,int ) ;
 int mrb_string_p (int ) ;
 int mrb_undef_p (int ) ;
 int str_convert_range (int *,int ,int ,int ,int *,int *) ;
 int str_subseq (int *,int ,int ,int ) ;
 int str_substr (int *,int ,int ,int ) ;

__attribute__((used)) static mrb_value
mrb_str_aref(mrb_state *mrb, mrb_value str, mrb_value indx, mrb_value alen)
{
  mrb_int beg, len;

  switch (str_convert_range(mrb, str, indx, alen, &beg, &len)) {
    case 129:
      return str_subseq(mrb, str, beg, len);
    case 130:
      str = str_substr(mrb, str, beg, len);
      if (mrb_undef_p(alen) && !mrb_nil_p(str) && RSTRING_LEN(str) == 0) return mrb_nil_value();
      return str;
    case 131:
      if (mrb_string_p(indx)) {
        return mrb_str_dup(mrb, indx);
      }
      else {
        return mrb_str_byte_subseq(mrb, str, beg, len);
      }
    case 128:
    default:
      return mrb_nil_value();
  }
}
