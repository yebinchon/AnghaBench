
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 unsigned int Z_DEFLATED ;
 int put_byte (int *,int,unsigned char) ;

__attribute__((used)) static void write_zlib_header(uint8_t *s) {
  unsigned level_flags = 0;
  unsigned w_bits = 8;
  unsigned int header = (Z_DEFLATED + ((w_bits-8)<<4)) << 8;
  header |= (level_flags << 6);

  header += 31 - (header % 31);


  put_byte(s, 0, (unsigned char)(header >> 8));
  put_byte(s, 1, (unsigned char)(header & 0xff));
}
