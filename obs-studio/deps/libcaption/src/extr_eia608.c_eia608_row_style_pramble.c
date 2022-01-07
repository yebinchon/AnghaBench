
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int eia608_style_t ;


 int eia608_row_pramble (int,int,int ,int) ;

uint16_t eia608_row_style_pramble(int row, int chan, eia608_style_t style, int underline) { return eia608_row_pramble(row, chan, style, underline); }
