
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_7__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int tif_clientdata; } ;
struct TYPE_8__ {int photometric; int bitspersample; TYPE_7__* tif; } ;
typedef TYPE_1__ TIFFRGBAImage ;
 int TIFFFileName (TYPE_7__*) ;
 int TIFFWarningExt (int ,int ,char*) ;
 int checkcmap (TYPE_1__*) ;
 int cvtcmap (TYPE_1__*) ;
 int makecmap (TYPE_1__*) ;
 int setupMap (TYPE_1__*) ;

__attribute__((used)) static int
buildMap(TIFFRGBAImage* img)
{
    switch (img->photometric) {
    case 130:
    case 128:
    case 129:
 if (img->bitspersample == 8)
     break;

    case 133:
    case 132:
 if (!setupMap(img))
     return (0);
 break;
    case 131:




 if (checkcmap(img) == 16)
     cvtcmap(img);
 else
     TIFFWarningExt(img->tif->tif_clientdata, TIFFFileName(img->tif), "Assuming 8-bit colormap");




 if (img->bitspersample <= 8 && !makecmap(img))
     return (0);
 break;
    }
    return (1);
}
