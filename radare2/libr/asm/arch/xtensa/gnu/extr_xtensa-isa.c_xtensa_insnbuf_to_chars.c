
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ is_big_endian; } ;
typedef TYPE_1__ xtensa_isa_internal ;
typedef scalar_t__ xtensa_isa ;
typedef int* xtensa_insnbuf ;
typedef int xtensa_format ;


 int XTENSA_UNDEFINED ;
 int byte_to_bit_index (int) ;
 int byte_to_word_index (int) ;
 int strcpy (int ,char*) ;
 int xtensa_format_decode (scalar_t__,int* const) ;
 int xtensa_format_length (scalar_t__,int) ;
 int xtensa_isa_buffer_overflow ;
 int xtensa_isa_maxlength (scalar_t__) ;
 int xtisa_errno ;
 int xtisa_error_msg ;

int
xtensa_insnbuf_to_chars (xtensa_isa isa,
    const xtensa_insnbuf insn,
    unsigned char *cp,
    int num_chars)
{
  xtensa_isa_internal *intisa = (xtensa_isa_internal *) isa;
  int insn_size = xtensa_isa_maxlength (isa);
  int fence_post, start, increment, i, byte_count;
  xtensa_format fmt;

  if (num_chars == 0) {
   num_chars = insn_size;
  }

  if (intisa->is_big_endian)
    {
      start = insn_size - 1;
      increment = -1;
    }
  else
    {
      start = 0;
      increment = 1;
    }



  fmt = xtensa_format_decode (isa, insn);
  if (fmt == XTENSA_UNDEFINED) {
   return XTENSA_UNDEFINED;
  }

  byte_count = xtensa_format_length (isa, fmt);
  if (byte_count == XTENSA_UNDEFINED) {
   return XTENSA_UNDEFINED;
  }

  if (byte_count > num_chars)
    {
      xtisa_errno = xtensa_isa_buffer_overflow;
      strcpy (xtisa_error_msg, "output buffer too small for instruction");
      return XTENSA_UNDEFINED;
    }

  fence_post = start + (byte_count * increment);

  for (i = start; i != fence_post; i += increment, ++cp)
    {
      int word_inx = byte_to_word_index (i);
      int bit_inx = byte_to_bit_index (i);

      *cp = (insn[word_inx] >> bit_inx) & 0xff;
    }

  return byte_count;
}
