
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int eia608_parity (int) ;
 int* eia608_reverse_row_map ;

__attribute__((used)) static inline uint16_t eia608_row_pramble(int row, int chan, int x, int underline)
{
    row = eia608_reverse_row_map[row & 0x0F];
    return eia608_parity(0x1040 | (chan ? 0x0800 : 0x0000) | ((row << 7) & 0x0700) | ((row << 5) & 0x0020)) | ((x << 1) & 0x001E) | (underline ? 0x0001 : 0x0000);
}
