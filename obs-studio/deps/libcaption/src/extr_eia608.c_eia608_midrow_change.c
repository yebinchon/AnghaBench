
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int eia608_style_t ;


 int eia608_parity (int) ;

uint16_t eia608_midrow_change(int chan, eia608_style_t style, int underline) { return eia608_parity(0x1120 | ((chan << 11) & 0x0800) | ((style << 1) & 0x000E) | (underline & 0x0001)); }
