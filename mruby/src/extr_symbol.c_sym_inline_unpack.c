
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int mrb_sym ;
typedef int mrb_int ;


 scalar_t__ SYMBOL_INLINE_LOWER_P (int) ;
 int SYMBOL_INLINE_P (int) ;
 int SYMBOL_INLINE_SHIFT ;
 int mrb_assert (int ) ;
 char* pack_table ;

__attribute__((used)) static const char*
sym_inline_unpack(mrb_sym sym, char *buf, mrb_int *lenp)
{
  int bit_per_char = SYMBOL_INLINE_LOWER_P(sym) ? 5 : 6;
  int i;

  mrb_assert(SYMBOL_INLINE_P(sym));

  for (i=0; i<30/bit_per_char; i++) {
    uint32_t bits = sym>>(i*bit_per_char+SYMBOL_INLINE_SHIFT) & ((1<<bit_per_char)-1);
    if (bits == 0) break;
    buf[i] = pack_table[bits-1];;
  }
  buf[i] = '\0';
  if (lenp) *lenp = i;
  return buf;
}
