
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STREAM ;


 int BER_TAG_INTEGER ;
 int ber_out_header (int ,int ,int) ;
 int out_uint16_be (int ,int) ;

void
ber_out_integer(STREAM s, int value)
{
 ber_out_header(s, BER_TAG_INTEGER, 2);
 out_uint16_be(s, value);
}
