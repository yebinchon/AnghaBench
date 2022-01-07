
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t tilegx_pipeline ;
typedef unsigned short tilegx_bundle_bits ;
struct tilegx_opcode {int dummy; } ;


 unsigned short TILEGX_OPC_NONE ;
 unsigned short** tilegx_bundle_decoder_fsms ;
 struct tilegx_opcode const* tilegx_opcodes ;

const struct tilegx_opcode *
find_opcode(tilegx_bundle_bits bits, tilegx_pipeline pipe)
{
  const unsigned short *table = tilegx_bundle_decoder_fsms[pipe];
  int index = 0;

  while (1)
  {
    unsigned short bitspec = table[index];
    unsigned int bitfield =
      ((unsigned int)(bits >> (bitspec & 63))) & (bitspec >> 6);

    unsigned short next = table[index + 1 + bitfield];
    if (next <= TILEGX_OPC_NONE)
      return &tilegx_opcodes[next];

    index = next - TILEGX_OPC_NONE;
  }
}
