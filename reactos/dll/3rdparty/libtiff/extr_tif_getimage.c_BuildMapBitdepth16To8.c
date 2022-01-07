
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8 ;
typedef int uint32 ;
struct TYPE_5__ {scalar_t__* Bitdepth16To8; TYPE_1__* tif; } ;
struct TYPE_4__ {int tif_clientdata; } ;
typedef TYPE_2__ TIFFRGBAImage ;


 int TIFFErrorExt (int ,char const*,char*) ;
 scalar_t__* _TIFFmalloc (int) ;
 int assert (int ) ;

__attribute__((used)) static int
BuildMapBitdepth16To8(TIFFRGBAImage* img)
{
 static const char module[]="BuildMapBitdepth16To8";
 uint8* m;
 uint32 n;
 assert(img->Bitdepth16To8==((void*)0));
 img->Bitdepth16To8=_TIFFmalloc(65536);
 if (img->Bitdepth16To8==((void*)0))
 {
  TIFFErrorExt(img->tif->tif_clientdata,module,"Out of memory");
  return(0);
 }
 m=img->Bitdepth16To8;
 for (n=0; n<65536; n++)
  *m++=(uint8)((n+128)/257);
 return(1);
}
