
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int td_bitspersample; } ;
struct TYPE_11__ {scalar_t__ tif_decoderow; int tif_flags; void* tif_postdecode; void* tif_decodetile; void* tif_decodestrip; TYPE_2__ tif_dir; } ;
struct TYPE_9__ {int predictor; scalar_t__ decodepfunc; scalar_t__ decoderow; void* decodetile; void* decodestrip; int (* setupdecode ) (TYPE_3__*) ;} ;
typedef TYPE_1__ TIFFPredictorState ;
typedef TYPE_2__ TIFFDirectory ;
typedef TYPE_3__ TIFF ;


 scalar_t__ PredictorDecodeRow ;
 void* PredictorDecodeTile ;
 int PredictorSetup (TYPE_3__*) ;
 TYPE_1__* PredictorState (TYPE_3__*) ;
 int TIFF_SWAB ;
 void* _TIFFNoPostDecode ;
 scalar_t__ fpAcc ;
 scalar_t__ horAcc16 ;
 scalar_t__ horAcc32 ;
 scalar_t__ horAcc8 ;
 int stub1 (TYPE_3__*) ;
 scalar_t__ swabHorAcc16 ;
 scalar_t__ swabHorAcc32 ;

__attribute__((used)) static int
PredictorSetupDecode(TIFF* tif)
{
 TIFFPredictorState* sp = PredictorState(tif);
 TIFFDirectory* td = &tif->tif_dir;




 if (!(*sp->setupdecode)(tif) || !PredictorSetup(tif))
  return 0;

 if (sp->predictor == 2) {
  switch (td->td_bitspersample) {
   case 8: sp->decodepfunc = horAcc8; break;
   case 16: sp->decodepfunc = horAcc16; break;
   case 32: sp->decodepfunc = horAcc32; break;
  }




                if( tif->tif_decoderow != PredictorDecodeRow )
                {
                    sp->decoderow = tif->tif_decoderow;
                    tif->tif_decoderow = PredictorDecodeRow;
                    sp->decodestrip = tif->tif_decodestrip;
                    tif->tif_decodestrip = PredictorDecodeTile;
                    sp->decodetile = tif->tif_decodetile;
                    tif->tif_decodetile = PredictorDecodeTile;
                }
  if (tif->tif_flags & TIFF_SWAB) {
   if (sp->decodepfunc == horAcc16) {
    sp->decodepfunc = swabHorAcc16;
    tif->tif_postdecode = _TIFFNoPostDecode;
            } else if (sp->decodepfunc == horAcc32) {
    sp->decodepfunc = swabHorAcc32;
    tif->tif_postdecode = _TIFFNoPostDecode;
            }
  }
 }

 else if (sp->predictor == 3) {
  sp->decodepfunc = fpAcc;




                if( tif->tif_decoderow != PredictorDecodeRow )
                {
                    sp->decoderow = tif->tif_decoderow;
                    tif->tif_decoderow = PredictorDecodeRow;
                    sp->decodestrip = tif->tif_decodestrip;
                    tif->tif_decodestrip = PredictorDecodeTile;
                    sp->decodetile = tif->tif_decodetile;
                    tif->tif_decodetile = PredictorDecodeTile;
                }





  if (tif->tif_flags & TIFF_SWAB) {
   tif->tif_postdecode = _TIFFNoPostDecode;
  }




 }

 return 1;
}
