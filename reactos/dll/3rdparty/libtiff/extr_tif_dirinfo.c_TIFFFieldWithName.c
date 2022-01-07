
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tif_clientdata; } ;
typedef int TIFFField ;
typedef TYPE_1__ TIFF ;


 int TIFFErrorExt (int ,char*,char*,char const*) ;
 int TIFF_ANY ;
 int * _TIFFFindFieldByName (TYPE_1__*,char const*,int ) ;

const TIFFField*
TIFFFieldWithName(TIFF* tif, const char *field_name)
{
 const TIFFField* fip =
  _TIFFFindFieldByName(tif, field_name, TIFF_ANY);
 if (!fip) {
  TIFFErrorExt(tif->tif_clientdata, "TIFFFieldWithName",
        "Internal error, unknown tag %s", field_name);
 }
 return (fip);
}
