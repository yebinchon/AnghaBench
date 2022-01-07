
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;

void
TIFFSwabFloat(float* fp)
{
 register unsigned char* cp = (unsigned char*) fp;
 unsigned char t;
 assert(sizeof(float)==4);
 t = cp[3]; cp[3] = cp[0]; cp[0] = t;
 t = cp[2]; cp[2] = cp[1]; cp[1] = t;
}
