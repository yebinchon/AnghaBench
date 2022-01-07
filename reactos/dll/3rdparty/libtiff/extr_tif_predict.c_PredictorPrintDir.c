
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int predictor; int (* printdir ) (int *,int *,long) ;} ;
typedef TYPE_1__ TIFFPredictorState ;
typedef int TIFF ;
typedef int FILE ;


 int FIELD_PREDICTOR ;
 TYPE_1__* PredictorState (int *) ;
 scalar_t__ TIFFFieldSet (int *,int ) ;
 int fprintf (int *,char*,...) ;
 int stub1 (int *,int *,long) ;

__attribute__((used)) static void
PredictorPrintDir(TIFF* tif, FILE* fd, long flags)
{
 TIFFPredictorState* sp = PredictorState(tif);

 (void) flags;
 if (TIFFFieldSet(tif,FIELD_PREDICTOR)) {
  fprintf(fd, "  Predictor: ");
  switch (sp->predictor) {
   case 1: fprintf(fd, "none "); break;
   case 2: fprintf(fd, "horizontal differencing "); break;
   case 3: fprintf(fd, "floating point predictor "); break;
  }
  fprintf(fd, "%d (0x%x)\n", sp->predictor, sp->predictor);
 }
 if (sp->printdir)
  (*sp->printdir)(tif, fd, flags);
}
