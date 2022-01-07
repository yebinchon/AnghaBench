
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cab_UWORD ;
typedef int cab_ULONG ;
typedef int cab_UBYTE ;



__attribute__((used)) static int make_decode_table(cab_ULONG nsyms, cab_ULONG nbits,
                             const cab_UBYTE *length, cab_UWORD *table) {
  register cab_UWORD sym;
  register cab_ULONG leaf;
  register cab_UBYTE bit_num = 1;
  cab_ULONG fill;
  cab_ULONG pos = 0;
  cab_ULONG table_mask = 1 << nbits;
  cab_ULONG bit_mask = table_mask >> 1;
  cab_ULONG next_symbol = bit_mask;


  while (bit_num <= nbits) {
    for (sym = 0; sym < nsyms; sym++) {
      if (length[sym] == bit_num) {
        leaf = pos;

        if((pos += bit_mask) > table_mask) return 1;


        fill = bit_mask;
        while (fill-- > 0) table[leaf++] = sym;
      }
    }
    bit_mask >>= 1;
    bit_num++;
  }


  if (pos != table_mask) {

    for (sym = pos; sym < table_mask; sym++) table[sym] = 0;


    pos <<= 16;
    table_mask <<= 16;
    bit_mask = 1 << 15;

    while (bit_num <= 16) {
      for (sym = 0; sym < nsyms; sym++) {
        if (length[sym] == bit_num) {
          leaf = pos >> 16;
          for (fill = 0; fill < bit_num - nbits; fill++) {

            if (table[leaf] == 0) {
              table[(next_symbol << 1)] = 0;
              table[(next_symbol << 1) + 1] = 0;
              table[leaf] = next_symbol++;
            }

            leaf = table[leaf] << 1;
            if ((pos >> (15-fill)) & 1) leaf++;
          }
          table[leaf] = sym;

          if ((pos += bit_mask) > table_mask) return 1;
        }
      }
      bit_mask >>= 1;
      bit_num++;
    }
  }


  if (pos == table_mask) return 0;


  for (sym = 0; sym < nsyms; sym++) if (length[sym]) return 1;
  return 0;
}
