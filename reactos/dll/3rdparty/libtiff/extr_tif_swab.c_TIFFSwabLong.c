
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;


 int assert (int) ;

void
TIFFSwabLong(uint32* lp)
{
 register unsigned char* cp = (unsigned char*) lp;
 unsigned char t;
 assert(sizeof(uint32)==4);
 t = cp[3]; cp[3] = cp[0]; cp[0] = t;
 t = cp[2]; cp[2] = cp[1]; cp[1] = t;
}
