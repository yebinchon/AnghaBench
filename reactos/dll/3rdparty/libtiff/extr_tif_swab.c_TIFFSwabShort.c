
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;


 int assert (int) ;

void
TIFFSwabShort(uint16* wp)
{
 register unsigned char* cp = (unsigned char*) wp;
 unsigned char t;
 assert(sizeof(uint16)==2);
 t = cp[1]; cp[1] = cp[0]; cp[0] = t;
}
