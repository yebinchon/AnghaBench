
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint32_t ;
typedef int uint16_t ;
typedef int mrb_sym ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;


 int MRB_DUMP_OK ;
 int memcpy (int *,char const*,scalar_t__) ;
 char* mrb_sym_name_len (int *,int const,scalar_t__*) ;
 int uint16_to_bin (int ,int *) ;
 int uint32_to_bin (size_t,int *) ;

__attribute__((used)) static int
write_lv_sym_table(mrb_state *mrb, uint8_t **start, mrb_sym const *syms, uint32_t syms_len)
{
  uint8_t *cur = *start;
  uint32_t i;
  const char *str;
  mrb_int str_len;

  cur += uint32_to_bin(syms_len, cur);

  for (i = 0; i < syms_len; ++i) {
    str = mrb_sym_name_len(mrb, syms[i], &str_len);
    cur += uint16_to_bin((uint16_t)str_len, cur);
    memcpy(cur, str, str_len);
    cur += str_len;
  }

  *start = cur;

  return MRB_DUMP_OK;
}
