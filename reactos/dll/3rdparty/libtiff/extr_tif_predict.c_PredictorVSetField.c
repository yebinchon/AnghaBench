
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int va_list ;
typedef int uint32 ;
typedef int uint16 ;
struct TYPE_9__ {int tif_flags; } ;
struct TYPE_8__ {int (* vsetparent ) (TYPE_2__*,int,int ) ;int predictor; } ;
typedef TYPE_1__ TIFFPredictorState ;
typedef TYPE_2__ TIFF ;


 int FIELD_PREDICTOR ;
 TYPE_1__* PredictorState (TYPE_2__*) ;
 int TIFFSetFieldBit (TYPE_2__*,int ) ;

 int TIFF_DIRTYDIRECT ;
 int assert (int ) ;
 int stub1 (TYPE_2__*,int,int ) ;
 int uint16_vap ;
 int va_arg (int ,int ) ;

__attribute__((used)) static int
PredictorVSetField(TIFF* tif, uint32 tag, va_list ap)
{
 TIFFPredictorState *sp = PredictorState(tif);

 assert(sp != ((void*)0));
 assert(sp->vsetparent != ((void*)0));

 switch (tag) {
 case 128:
  sp->predictor = (uint16) va_arg(ap, uint16_vap);
  TIFFSetFieldBit(tif, FIELD_PREDICTOR);
  break;
 default:
  return (*sp->vsetparent)(tif, tag, ap);
 }
 tif->tif_flags |= TIFF_DIRTYDIRECT;
 return 1;
}
