
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int tmsize_t ;



void
TIFFSwabArrayOfTriples(register uint8* tp, tmsize_t n)
{
 unsigned char* cp;
 unsigned char t;


 while (n-- > 0) {
  cp = (unsigned char*) tp;
  t = cp[2]; cp[2] = cp[0]; cp[0] = t;
  tp += 3;
 }
}
