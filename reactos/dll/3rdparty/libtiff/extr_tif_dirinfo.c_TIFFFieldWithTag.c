
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_4__ {int tif_clientdata; } ;
typedef int TIFFField ;
typedef TYPE_1__ TIFF ;


 int TIFFErrorExt (int ,char*,char*,unsigned int) ;
 int * TIFFFindField (TYPE_1__*,scalar_t__,int ) ;
 int TIFF_ANY ;

const TIFFField*
TIFFFieldWithTag(TIFF* tif, uint32 tag)
{
 const TIFFField* fip = TIFFFindField(tif, tag, TIFF_ANY);
 if (!fip) {
  TIFFErrorExt(tif->tif_clientdata, "TIFFFieldWithTag",
        "Internal error, unknown tag 0x%x",
        (unsigned int) tag);
 }
 return (fip);
}
