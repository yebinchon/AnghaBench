
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int td_bitspersample; int td_sampleformat; scalar_t__ td_planarconfig; int td_samplesperpixel; } ;
struct TYPE_12__ {int tif_clientdata; TYPE_2__ tif_dir; } ;
struct TYPE_10__ {int predictor; int stride; scalar_t__ rowsize; } ;
typedef TYPE_1__ TIFFPredictorState ;
typedef TYPE_2__ TIFFDirectory ;
typedef TYPE_3__ TIFF ;


 scalar_t__ PLANARCONFIG_CONTIG ;



 TYPE_1__* PredictorState (TYPE_3__*) ;
 int SAMPLEFORMAT_IEEEFP ;
 int TIFFErrorExt (int ,char const*,char*,int) ;
 scalar_t__ TIFFScanlineSize (TYPE_3__*) ;
 scalar_t__ TIFFTileRowSize (TYPE_3__*) ;
 scalar_t__ isTiled (TYPE_3__*) ;

__attribute__((used)) static int
PredictorSetup(TIFF* tif)
{
 static const char module[] = "PredictorSetup";

 TIFFPredictorState* sp = PredictorState(tif);
 TIFFDirectory* td = &tif->tif_dir;

 switch (sp->predictor)
 {
  case 128:
   return 1;
  case 129:
   if (td->td_bitspersample != 8
       && td->td_bitspersample != 16
       && td->td_bitspersample != 32) {
    TIFFErrorExt(tif->tif_clientdata, module,
        "Horizontal differencing \"Predictor\" not supported with %d-bit samples",
        td->td_bitspersample);
    return 0;
   }
   break;
  case 130:
   if (td->td_sampleformat != SAMPLEFORMAT_IEEEFP) {
    TIFFErrorExt(tif->tif_clientdata, module,
        "Floating point \"Predictor\" not supported with %d data format",
        td->td_sampleformat);
    return 0;
   }
                        if (td->td_bitspersample != 16
                            && td->td_bitspersample != 24
                            && td->td_bitspersample != 32
                            && td->td_bitspersample != 64) {
                                TIFFErrorExt(tif->tif_clientdata, module,
                                             "Floating point \"Predictor\" not supported with %d-bit samples",
                                             td->td_bitspersample);
    return 0;
                            }
   break;
  default:
   TIFFErrorExt(tif->tif_clientdata, module,
       "\"Predictor\" value %d not supported",
       sp->predictor);
   return 0;
 }
 sp->stride = (td->td_planarconfig == PLANARCONFIG_CONTIG ?
     td->td_samplesperpixel : 1);



 if (isTiled(tif))
  sp->rowsize = TIFFTileRowSize(tif);
 else
  sp->rowsize = TIFFScanlineSize(tif);
 if (sp->rowsize == 0)
  return 0;

 return 1;
}
