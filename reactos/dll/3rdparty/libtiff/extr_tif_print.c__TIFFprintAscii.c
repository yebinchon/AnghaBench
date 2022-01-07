
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int _TIFFprintAsciiBounded (int *,char const*,int ) ;
 int strlen (char const*) ;

void
_TIFFprintAscii(FILE* fd, const char* cp)
{
 _TIFFprintAsciiBounded( fd, cp, strlen(cp));
}
