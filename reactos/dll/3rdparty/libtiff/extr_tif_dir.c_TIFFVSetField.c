
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int va_list ;
typedef int uint32 ;
struct TYPE_6__ {int (* vsetfield ) (TYPE_2__*,int ,int ) ;} ;
struct TYPE_7__ {TYPE_1__ tif_tagmethods; } ;
typedef TYPE_2__ TIFF ;


 scalar_t__ OkToChangeTag (TYPE_2__*,int ) ;
 int stub1 (TYPE_2__*,int ,int ) ;

int
TIFFVSetField(TIFF* tif, uint32 tag, va_list ap)
{
 return OkToChangeTag(tif, tag) ?
     (*tif->tif_tagmethods.vsetfield)(tif, tag, ap) : 0;
}
