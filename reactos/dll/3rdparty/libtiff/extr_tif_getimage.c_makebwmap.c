
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_5__ {int tif_clientdata; } ;
struct TYPE_4__ {int bitspersample; int ** BWmap; TYPE_3__* tif; int * Map; } ;
typedef int TIFFRGBValue ;
typedef TYPE_1__ TIFFRGBAImage ;


 int GREY (int) ;
 int TIFFErrorExt (int ,int ,char*) ;
 int TIFFFileName (TYPE_3__*) ;
 scalar_t__ _TIFFmalloc (int) ;

__attribute__((used)) static int
makebwmap(TIFFRGBAImage* img)
{
    TIFFRGBValue* Map = img->Map;
    int bitspersample = img->bitspersample;
    int nsamples = 8 / bitspersample;
    int i;
    uint32* p;

    if( nsamples == 0 )
        nsamples = 1;

    img->BWmap = (uint32**) _TIFFmalloc(
 256*sizeof (uint32 *)+(256*nsamples*sizeof(uint32)));
    if (img->BWmap == ((void*)0)) {
  TIFFErrorExt(img->tif->tif_clientdata, TIFFFileName(img->tif), "No space for B&W mapping table");
  return (0);
    }
    p = (uint32*)(img->BWmap + 256);
    for (i = 0; i < 256; i++) {
 TIFFRGBValue c;
 img->BWmap[i] = p;
 switch (bitspersample) {

 case 1:
     c = Map[i>>7]; *p++ = PACK(c,c,c);;
     c = Map[(i>>6)&1]; *p++ = PACK(c,c,c);;
     c = Map[(i>>5)&1]; *p++ = PACK(c,c,c);;
     c = Map[(i>>4)&1]; *p++ = PACK(c,c,c);;
     c = Map[(i>>3)&1]; *p++ = PACK(c,c,c);;
     c = Map[(i>>2)&1]; *p++ = PACK(c,c,c);;
     c = Map[(i>>1)&1]; *p++ = PACK(c,c,c);;
     c = Map[i&1]; *p++ = PACK(c,c,c);;
     break;
 case 2:
     c = Map[i>>6]; *p++ = PACK(c,c,c);;
     c = Map[(i>>4)&3]; *p++ = PACK(c,c,c);;
     c = Map[(i>>2)&3]; *p++ = PACK(c,c,c);;
     c = Map[i&3]; *p++ = PACK(c,c,c);;
     break;
 case 4:
     c = Map[i>>4]; *p++ = PACK(c,c,c);;
     c = Map[i&0xf]; *p++ = PACK(c,c,c);;
     break;
 case 8:
        case 16:
     c = Map[i]; *p++ = PACK(c,c,c);;
     break;
 }

    }
    return (1);
}
