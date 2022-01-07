
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int printdir; int vsetfield; int vgetfield; } ;
struct TYPE_9__ {int tif_setupencode; int tif_setupdecode; TYPE_1__ tif_tagmethods; } ;
struct TYPE_8__ {int setupencode; int setupdecode; int printdir; int vsetparent; int vgetparent; } ;
typedef TYPE_2__ TIFFPredictorState ;
typedef TYPE_3__ TIFF ;


 TYPE_2__* PredictorState (TYPE_3__*) ;
 int assert (int) ;

int
TIFFPredictorCleanup(TIFF* tif)
{
 TIFFPredictorState* sp = PredictorState(tif);

 assert(sp != 0);

 tif->tif_tagmethods.vgetfield = sp->vgetparent;
 tif->tif_tagmethods.vsetfield = sp->vsetparent;
 tif->tif_tagmethods.printdir = sp->printdir;
 tif->tif_setupdecode = sp->setupdecode;
 tif->tif_setupencode = sp->setupencode;

 return 1;
}
