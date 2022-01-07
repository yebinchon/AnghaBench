
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STREAM ;
typedef int RD_BOOL ;


 int False ;
 int True ;
 int in_uint16_be (int ,int) ;
 int in_uint8 (int ,int) ;

RD_BOOL
ber_in_header(STREAM s, int *tagval, int *decoded_len)
{
 in_uint8(s, *tagval);
 in_uint8(s, *decoded_len);

 if (*decoded_len < 0x80)
  return True;
 else if (*decoded_len == 0x81)
 {
  in_uint8(s, *decoded_len);
  return True;
 }
 else if (*decoded_len == 0x82)
 {
  in_uint16_be(s, *decoded_len);
  return True;
 }

 return False;
}
