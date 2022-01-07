
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;


 int E_INDEX_ERROR ;
 scalar_t__ RSTRING_CHAR_LEN (int ) ;




 int mrb_raise (int *,int ,char*) ;
 int mrb_raisef (int *,int ,char*,int ) ;
 int mrb_to_str (int *,int ) ;
 int str_convert_range (int *,int ,int ,int ,scalar_t__*,scalar_t__*) ;
 int str_out_of_index (int *,int ) ;
 int str_range_to_bytes (int ,scalar_t__*,scalar_t__*) ;
 int str_replace_partial (int *,int ,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static void
mrb_str_aset(mrb_state *mrb, mrb_value str, mrb_value indx, mrb_value alen, mrb_value replace)
{
  mrb_int beg, len, charlen;

  mrb_to_str(mrb, replace);

  switch (str_convert_range(mrb, str, indx, alen, &beg, &len)) {
    case 128:
    default:
      mrb_raise(mrb, E_INDEX_ERROR, "string not matched");
    case 130:
      if (len < 0) {
        mrb_raisef(mrb, E_INDEX_ERROR, "negative length %v", alen);
      }
      charlen = RSTRING_CHAR_LEN(str);
      if (beg < 0) { beg += charlen; }
      if (beg < 0 || beg > charlen) { str_out_of_index(mrb, indx); }

    case 129:
      str_range_to_bytes(str, &beg, &len);

    case 131:
      str_replace_partial(mrb, str, beg, beg + len, replace);
  }
}
