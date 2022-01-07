
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int _TIFFprintAscii (int *,char const*) ;
 int fprintf (int *,char*,...) ;

void
_TIFFprintAsciiTag(FILE* fd, const char* name, const char* value)
{
 fprintf(fd, "  %s: \"", name);
 _TIFFprintAscii(fd, value);
 fprintf(fd, "\"\n");
}
