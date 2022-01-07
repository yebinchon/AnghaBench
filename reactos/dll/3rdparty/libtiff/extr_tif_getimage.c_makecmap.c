
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
typedef int uint16 ;
struct TYPE_5__ {int tif_clientdata; } ;
struct TYPE_4__ {int bitspersample; int ** PALmap; TYPE_3__* tif; int * bluecmap; int * greencmap; int * redcmap; } ;
typedef int TIFFRGBValue ;
typedef TYPE_1__ TIFFRGBAImage ;


 int CMAP (int) ;
 int TIFFErrorExt (int ,int ,char*) ;
 int TIFFFileName (TYPE_3__*) ;
 scalar_t__ _TIFFmalloc (int) ;

__attribute__((used)) static int
makecmap(TIFFRGBAImage* img)
{
    int bitspersample = img->bitspersample;
    int nsamples = 8 / bitspersample;
    uint16* r = img->redcmap;
    uint16* g = img->greencmap;
    uint16* b = img->bluecmap;
    uint32 *p;
    int i;

    img->PALmap = (uint32**) _TIFFmalloc(
 256*sizeof (uint32 *)+(256*nsamples*sizeof(uint32)));
    if (img->PALmap == ((void*)0)) {
  TIFFErrorExt(img->tif->tif_clientdata, TIFFFileName(img->tif), "No space for Palette mapping table");
  return (0);
 }
    p = (uint32*)(img->PALmap + 256);
    for (i = 0; i < 256; i++) {
 TIFFRGBValue c;
 img->PALmap[i] = p;

 switch (bitspersample) {
 case 1:
     c = (TIFFRGBValue) i>>7; *p++ = PACK(r[c]&0xff, g[c]&0xff, b[c]&0xff);;
     c = (TIFFRGBValue) (i>>6)&1; *p++ = PACK(r[c]&0xff, g[c]&0xff, b[c]&0xff);;
     c = (TIFFRGBValue) (i>>5)&1; *p++ = PACK(r[c]&0xff, g[c]&0xff, b[c]&0xff);;
     c = (TIFFRGBValue) (i>>4)&1; *p++ = PACK(r[c]&0xff, g[c]&0xff, b[c]&0xff);;
     c = (TIFFRGBValue) (i>>3)&1; *p++ = PACK(r[c]&0xff, g[c]&0xff, b[c]&0xff);;
     c = (TIFFRGBValue) (i>>2)&1; *p++ = PACK(r[c]&0xff, g[c]&0xff, b[c]&0xff);;
     c = (TIFFRGBValue) (i>>1)&1; *p++ = PACK(r[c]&0xff, g[c]&0xff, b[c]&0xff);;
     c = (TIFFRGBValue) i&1; *p++ = PACK(r[c]&0xff, g[c]&0xff, b[c]&0xff);;
     break;
 case 2:
     c = (TIFFRGBValue) i>>6; *p++ = PACK(r[c]&0xff, g[c]&0xff, b[c]&0xff);;
     c = (TIFFRGBValue) (i>>4)&3; *p++ = PACK(r[c]&0xff, g[c]&0xff, b[c]&0xff);;
     c = (TIFFRGBValue) (i>>2)&3; *p++ = PACK(r[c]&0xff, g[c]&0xff, b[c]&0xff);;
     c = (TIFFRGBValue) i&3; *p++ = PACK(r[c]&0xff, g[c]&0xff, b[c]&0xff);;
     break;
 case 4:
     c = (TIFFRGBValue) i>>4; *p++ = PACK(r[c]&0xff, g[c]&0xff, b[c]&0xff);;
     c = (TIFFRGBValue) i&0xf; *p++ = PACK(r[c]&0xff, g[c]&0xff, b[c]&0xff);;
     break;
 case 8:
     c = (TIFFRGBValue) i; *p++ = PACK(r[c]&0xff, g[c]&0xff, b[c]&0xff);;
     break;
 }

    }
    return (1);
}
