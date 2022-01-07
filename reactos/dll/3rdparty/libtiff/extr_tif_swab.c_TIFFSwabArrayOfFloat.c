
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmsize_t ;


 int assert (int) ;

void
TIFFSwabArrayOfFloat(register float* fp, tmsize_t n)
{
 register unsigned char *cp;
 register unsigned char t;
 assert(sizeof(float)==4);

 while (n-- > 0) {
  cp = (unsigned char *)fp;
  t = cp[3]; cp[3] = cp[0]; cp[0] = t;
  t = cp[2]; cp[2] = cp[1]; cp[1] = t;
  fp++;
 }
}
