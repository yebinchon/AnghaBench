
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint16 ;
typedef int tmsize_t ;
struct TYPE_3__ {int (* decodepfunc ) (int *,int *,int ) ;scalar_t__ (* decoderow ) (int *,int *,int ,int ) ;} ;
typedef TYPE_1__ TIFFPredictorState ;
typedef int TIFF ;


 TYPE_1__* PredictorState (int *) ;
 int assert (int ) ;
 scalar_t__ stub1 (int *,int *,int ,int ) ;
 int stub2 (int *,int *,int ) ;

__attribute__((used)) static int
PredictorDecodeRow(TIFF* tif, uint8* op0, tmsize_t occ0, uint16 s)
{
 TIFFPredictorState *sp = PredictorState(tif);

 assert(sp != ((void*)0));
 assert(sp->decoderow != ((void*)0));
 assert(sp->decodepfunc != ((void*)0));

 if ((*sp->decoderow)(tif, op0, occ0, s)) {
  return (*sp->decodepfunc)(tif, op0, occ0);
 } else
  return 0;
}
