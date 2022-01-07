
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
typedef int RBuffer ;


 int read_byte (int *) ;
 scalar_t__ read_short (int *) ;
 int read_word (int *) ;

__attribute__((used)) static ut32 read_multiple_bytes(RBuffer *b) {
 ut32 r = read_byte (b);
 if ((r & 0x80) != 0x80) {
  return r;
 }
 if ((r & 0xc0) != 0xc0) {
  return ((r & 0x7f) << 8) + read_byte (b);
 }
 if ((r & 0xe0) != 0xe0) {
  r = ((r & 0x3f) << 24) + (read_byte (b) << 16);
  r += read_short (b);
  return r;
 }
 return read_word (b);
}
