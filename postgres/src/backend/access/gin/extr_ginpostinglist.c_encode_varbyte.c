
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;



__attribute__((used)) static void
encode_varbyte(uint64 val, unsigned char **ptr)
{
 unsigned char *p = *ptr;

 while (val > 0x7F)
 {
  *(p++) = 0x80 | (val & 0x7F);
  val >>= 7;
 }
 *(p++) = (unsigned char) val;

 *ptr = p;
}
