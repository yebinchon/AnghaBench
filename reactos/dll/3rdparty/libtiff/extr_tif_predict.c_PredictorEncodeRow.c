
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint16 ;
typedef int tmsize_t ;
struct TYPE_3__ {int (* encoderow ) (int *,int *,int ,int ) ;int (* encodepfunc ) (int *,int *,int ) ;} ;
typedef TYPE_1__ TIFFPredictorState ;
typedef int TIFF ;


 TYPE_1__* PredictorState (int *) ;
 int assert (int ) ;
 int stub1 (int *,int *,int ) ;
 int stub2 (int *,int *,int ,int ) ;

__attribute__((used)) static int
PredictorEncodeRow(TIFF* tif, uint8* bp, tmsize_t cc, uint16 s)
{
 TIFFPredictorState *sp = PredictorState(tif);

 assert(sp != ((void*)0));
 assert(sp->encodepfunc != ((void*)0));
 assert(sp->encoderow != ((void*)0));


 if( !(*sp->encodepfunc)(tif, bp, cc) )
        return 0;
 return (*sp->encoderow)(tif, bp, cc, s);
}
