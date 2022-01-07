
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint16 ;
typedef int tmsize_t ;
struct TYPE_9__ {int tif_clientdata; } ;
struct TYPE_8__ {int rowsize; int (* decodepfunc ) (TYPE_2__*,int *,int) ;scalar_t__ (* decodetile ) (TYPE_2__*,int *,int,int ) ;} ;
typedef TYPE_1__ TIFFPredictorState ;
typedef TYPE_2__ TIFF ;


 TYPE_1__* PredictorState (TYPE_2__*) ;
 int TIFFErrorExt (int ,char*,char*,char*) ;
 int assert (int) ;
 scalar_t__ stub1 (TYPE_2__*,int *,int,int ) ;
 int stub2 (TYPE_2__*,int *,int) ;

__attribute__((used)) static int
PredictorDecodeTile(TIFF* tif, uint8* op0, tmsize_t occ0, uint16 s)
{
 TIFFPredictorState *sp = PredictorState(tif);

 assert(sp != ((void*)0));
 assert(sp->decodetile != ((void*)0));

 if ((*sp->decodetile)(tif, op0, occ0, s)) {
  tmsize_t rowsize = sp->rowsize;
  assert(rowsize > 0);
  if((occ0%rowsize) !=0)
        {
            TIFFErrorExt(tif->tif_clientdata, "PredictorDecodeTile",
                         "%s", "occ0%rowsize != 0");
            return 0;
        }
  assert(sp->decodepfunc != ((void*)0));
  while (occ0 > 0) {
   if( !(*sp->decodepfunc)(tif, op0, rowsize) )
                return 0;
   occ0 -= rowsize;
   op0 += rowsize;
  }
  return 1;
 } else
  return 0;
}
