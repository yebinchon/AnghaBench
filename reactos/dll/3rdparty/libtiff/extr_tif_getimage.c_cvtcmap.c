
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_3__ {long bitspersample; int * bluecmap; int * greencmap; int * redcmap; } ;
typedef TYPE_1__ TIFFRGBAImage ;


 int CVT (int ) ;

__attribute__((used)) static void
cvtcmap(TIFFRGBAImage* img)
{
    uint16* r = img->redcmap;
    uint16* g = img->greencmap;
    uint16* b = img->bluecmap;
    long i;

    for (i = (1L<<img->bitspersample)-1; i >= 0; i--) {

 r[i] = ((uint16)((r[i])>>8));
 g[i] = ((uint16)((g[i])>>8));
 b[i] = ((uint16)((b[i])>>8));

    }
}
