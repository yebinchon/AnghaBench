
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int printdir; int vsetfield; int vgetfield; } ;
struct TYPE_10__ {int tif_setupencode; int tif_setupdecode; TYPE_1__ tif_tagmethods; int tif_clientdata; } ;
struct TYPE_9__ {int predictor; int * decodepfunc; int * encodepfunc; int setupencode; int setupdecode; int printdir; int vsetparent; int vgetparent; } ;
typedef TYPE_2__ TIFFPredictorState ;
typedef TYPE_3__ TIFF ;


 int PredictorPrintDir ;
 int PredictorSetupDecode ;
 int PredictorSetupEncode ;
 TYPE_2__* PredictorState (TYPE_3__*) ;
 int PredictorVGetField ;
 int PredictorVSetField ;
 int TIFFArrayCount (int ) ;
 int TIFFErrorExt (int ,char*,char*) ;
 int _TIFFMergeFields (TYPE_3__*,int ,int ) ;
 int assert (int) ;
 int predictFields ;

int
TIFFPredictorInit(TIFF* tif)
{
 TIFFPredictorState* sp = PredictorState(tif);

 assert(sp != 0);




 if (!_TIFFMergeFields(tif, predictFields,
         TIFFArrayCount(predictFields))) {
  TIFFErrorExt(tif->tif_clientdata, "TIFFPredictorInit",
      "Merging Predictor codec-specific tags failed");
  return 0;
 }




 sp->vgetparent = tif->tif_tagmethods.vgetfield;
 tif->tif_tagmethods.vgetfield =
            PredictorVGetField;
 sp->vsetparent = tif->tif_tagmethods.vsetfield;
 tif->tif_tagmethods.vsetfield =
     PredictorVSetField;
 sp->printdir = tif->tif_tagmethods.printdir;
 tif->tif_tagmethods.printdir =
            PredictorPrintDir;

 sp->setupdecode = tif->tif_setupdecode;
 tif->tif_setupdecode = PredictorSetupDecode;
 sp->setupencode = tif->tif_setupencode;
 tif->tif_setupencode = PredictorSetupEncode;

 sp->predictor = 1;
 sp->encodepfunc = ((void*)0);
 sp->decodepfunc = ((void*)0);
 return 1;
}
