
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int va_list ;
typedef int uint32 ;
struct TYPE_9__ {int (* vgetfield ) (TYPE_3__*,int ,int ) ;} ;
struct TYPE_11__ {TYPE_1__ tif_tagmethods; } ;
struct TYPE_10__ {int field_bit; } ;
typedef TYPE_2__ TIFFField ;
typedef TYPE_3__ TIFF ;


 scalar_t__ TIFFFieldSet (TYPE_3__*,int ) ;
 TYPE_2__* TIFFFindField (TYPE_3__*,int ,int ) ;
 int TIFF_ANY ;
 scalar_t__ isPseudoTag (int ) ;
 int stub1 (TYPE_3__*,int ,int ) ;

int
TIFFVGetField(TIFF* tif, uint32 tag, va_list ap)
{
 const TIFFField* fip = TIFFFindField(tif, tag, TIFF_ANY);
 return (fip && (isPseudoTag(tag) || TIFFFieldSet(tif, fip->field_bit)) ?
     (*tif->tif_tagmethods.vgetfield)(tif, tag, ap) : 0);
}
