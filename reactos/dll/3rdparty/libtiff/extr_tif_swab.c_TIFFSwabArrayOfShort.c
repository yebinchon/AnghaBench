
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
typedef int tmsize_t ;


 int assert (int) ;

void
TIFFSwabArrayOfShort(register uint16* wp, tmsize_t n)
{
 register unsigned char* cp;
 register unsigned char t;
 assert(sizeof(uint16)==2);

 while (n-- > 0) {
  cp = (unsigned char*) wp;
  t = cp[1]; cp[1] = cp[0]; cp[0] = t;
  wp++;
 }
}
