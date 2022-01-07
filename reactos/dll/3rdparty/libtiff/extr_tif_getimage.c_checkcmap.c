
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_3__ {long bitspersample; int * bluecmap; int * greencmap; int * redcmap; } ;
typedef TYPE_1__ TIFFRGBAImage ;



__attribute__((used)) static int
checkcmap(TIFFRGBAImage* img)
{
    uint16* r = img->redcmap;
    uint16* g = img->greencmap;
    uint16* b = img->bluecmap;
    long n = 1L<<img->bitspersample;

    while (n-- > 0)
 if (*r++ >= 256 || *g++ >= 256 || *b++ >= 256)
     return (16);
    return (8);
}
