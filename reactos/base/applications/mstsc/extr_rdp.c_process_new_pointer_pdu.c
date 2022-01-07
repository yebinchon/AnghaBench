
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STREAM ;


 int in_uint16_le (int ,int) ;
 int process_colour_pointer_common (int ,int) ;

void
process_new_pointer_pdu(STREAM s)
{
 int xor_bpp;

 in_uint16_le(s, xor_bpp);
 process_colour_pointer_common(s, xor_bpp);
}
