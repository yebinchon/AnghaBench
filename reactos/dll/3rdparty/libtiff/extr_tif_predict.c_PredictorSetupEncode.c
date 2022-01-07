
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int td_bitspersample; } ;
struct TYPE_11__ {scalar_t__ tif_encoderow; int tif_flags; void* tif_encodetile; void* tif_encodestrip; void* tif_postdecode; TYPE_2__ tif_dir; } ;
struct TYPE_9__ {int predictor; scalar_t__ encodepfunc; scalar_t__ encoderow; void* encodetile; void* encodestrip; int (* setupencode ) (TYPE_3__*) ;} ;
typedef TYPE_1__ TIFFPredictorState ;
typedef TYPE_2__ TIFFDirectory ;
typedef TYPE_3__ TIFF ;


 scalar_t__ PredictorEncodeRow ;
 void* PredictorEncodeTile ;
 int PredictorSetup (TYPE_3__*) ;
 TYPE_1__* PredictorState (TYPE_3__*) ;
 int TIFF_SWAB ;
 void* _TIFFNoPostDecode ;
 scalar_t__ fpDiff ;
 scalar_t__ horDiff16 ;
 scalar_t__ horDiff32 ;
 scalar_t__ horDiff8 ;
 int stub1 (TYPE_3__*) ;
 scalar_t__ swabHorDiff16 ;
 scalar_t__ swabHorDiff32 ;

__attribute__((used)) static int
PredictorSetupEncode(TIFF* tif)
{
 TIFFPredictorState* sp = PredictorState(tif);
 TIFFDirectory* td = &tif->tif_dir;

 if (!(*sp->setupencode)(tif) || !PredictorSetup(tif))
  return 0;

 if (sp->predictor == 2) {
  switch (td->td_bitspersample) {
   case 8: sp->encodepfunc = horDiff8; break;
   case 16: sp->encodepfunc = horDiff16; break;
   case 32: sp->encodepfunc = horDiff32; break;
  }




                if( tif->tif_encoderow != PredictorEncodeRow )
                {
                    sp->encoderow = tif->tif_encoderow;
                    tif->tif_encoderow = PredictorEncodeRow;
                    sp->encodestrip = tif->tif_encodestrip;
                    tif->tif_encodestrip = PredictorEncodeTile;
                    sp->encodetile = tif->tif_encodetile;
                    tif->tif_encodetile = PredictorEncodeTile;
                }
                if (tif->tif_flags & TIFF_SWAB) {
                    if (sp->encodepfunc == horDiff16) {
                            sp->encodepfunc = swabHorDiff16;
                            tif->tif_postdecode = _TIFFNoPostDecode;
                    } else if (sp->encodepfunc == horDiff32) {
                            sp->encodepfunc = swabHorDiff32;
                            tif->tif_postdecode = _TIFFNoPostDecode;
                    }
                }
        }

 else if (sp->predictor == 3) {
  sp->encodepfunc = fpDiff;




                if( tif->tif_encoderow != PredictorEncodeRow )
                {
                    sp->encoderow = tif->tif_encoderow;
                    tif->tif_encoderow = PredictorEncodeRow;
                    sp->encodestrip = tif->tif_encodestrip;
                    tif->tif_encodestrip = PredictorEncodeTile;
                    sp->encodetile = tif->tif_encodetile;
                    tif->tif_encodetile = PredictorEncodeTile;
                }
 }

 return 1;
}
