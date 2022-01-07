
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int ldr_header_t ;



uint16_t get_hcs ( ldr_header_t* hd )
{
 uint8_t* head = ( uint8_t* ) hd;
 uint8_t hcs_minor;
 uint8_t hcs_major;
 uint16_t n = 0xffff;
 uint16_t m = 0;
 int state = 0;
 int i,j;
 for ( i = 0; i < 0x54; i++ )
 {
  uint16_t m = head[i];
  m = m << 8;
  for ( j = 0; j < 8; j++ )
  {
   if ( ( ( n ^ m ) & 0x8000 ) == 0 )
   {
    state = 0;
   }
   else
   {
    state = 1;
   }
   n = n << 1;
   if ( state )
   {
    n ^= 0x1021;
   }
   m = m << 1;
  }
  n &= 0xffff;
 }
 n ^= 0xffff;
 hcs_major = ( uint8_t ) ( ( n & 0xff00 ) >> 8 );
 hcs_minor = ( uint8_t ) ( n & 0xff );
 uint16_t hcs = hcs_major <<8 | hcs_minor;
 return hcs;
}
