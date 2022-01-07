
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_7__ {int tif_flags; int tif_name; int tif_clientdata; } ;
struct TYPE_6__ {int field_name; int field_oktochange; } ;
typedef TYPE_1__ TIFFField ;
typedef TYPE_2__ TIFF ;


 int TIFFErrorExt (int ,char*,char*,int ,char*,...) ;
 TYPE_1__* TIFFFindField (TYPE_2__*,scalar_t__,int ) ;
 scalar_t__ TIFFTAG_IMAGELENGTH ;
 int TIFF_ANY ;
 int TIFF_BEENWRITING ;
 scalar_t__ isPseudoTag (scalar_t__) ;

__attribute__((used)) static int
OkToChangeTag(TIFF* tif, uint32 tag)
{
 const TIFFField* fip = TIFFFindField(tif, tag, TIFF_ANY);
 if (!fip) {
  TIFFErrorExt(tif->tif_clientdata, "TIFFSetField", "%s: Unknown %stag %u",
      tif->tif_name, isPseudoTag(tag) ? "pseudo-" : "", tag);
  return (0);
 }
 if (tag != TIFFTAG_IMAGELENGTH && (tif->tif_flags & TIFF_BEENWRITING) &&
     !fip->field_oktochange) {






  TIFFErrorExt(tif->tif_clientdata, "TIFFSetField",
      "%s: Cannot modify tag \"%s\" while writing",
      tif->tif_name, fip->field_name);
  return (0);
 }
 return (1);
}
