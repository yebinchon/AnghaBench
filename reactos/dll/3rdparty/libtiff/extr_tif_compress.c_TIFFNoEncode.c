
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int td_compression; } ;
struct TYPE_8__ {TYPE_1__ tif_dir; int tif_name; int tif_clientdata; } ;
struct TYPE_7__ {int name; } ;
typedef TYPE_2__ TIFFCodec ;
typedef TYPE_3__ TIFF ;


 int TIFFErrorExt (int ,int ,char*,int ,char const*) ;
 TYPE_2__* TIFFFindCODEC (int ) ;

__attribute__((used)) static int
TIFFNoEncode(TIFF* tif, const char* method)
{
 const TIFFCodec* c = TIFFFindCODEC(tif->tif_dir.td_compression);

 if (c) {
  TIFFErrorExt(tif->tif_clientdata, tif->tif_name,
        "%s %s encoding is not implemented",
        c->name, method);
 } else {
  TIFFErrorExt(tif->tif_clientdata, tif->tif_name,
   "Compression scheme %u %s encoding is not implemented",
        tif->tif_dir.td_compression, method);
 }
 return (-1);
}
