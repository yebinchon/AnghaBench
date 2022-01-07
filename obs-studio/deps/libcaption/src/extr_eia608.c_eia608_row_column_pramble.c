
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int eia608_row_pramble (int,int,int,int) ;

uint16_t eia608_row_column_pramble(int row, int col, int chan, int underline) { return eia608_row_pramble(row, chan, 0x10 | (col / 4), underline); }
