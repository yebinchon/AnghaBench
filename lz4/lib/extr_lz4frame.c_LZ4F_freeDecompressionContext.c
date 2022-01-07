
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* tmpOutBuffer; struct TYPE_4__* tmpIn; scalar_t__ dStage; } ;
typedef scalar_t__ LZ4F_errorCode_t ;
typedef TYPE_1__ LZ4F_dctx ;


 int FREEMEM (TYPE_1__*) ;
 scalar_t__ LZ4F_OK_NoError ;

LZ4F_errorCode_t LZ4F_freeDecompressionContext(LZ4F_dctx* dctx)
{
    LZ4F_errorCode_t result = LZ4F_OK_NoError;
    if (dctx != ((void*)0)) {
      result = (LZ4F_errorCode_t)dctx->dStage;
      FREEMEM(dctx->tmpIn);
      FREEMEM(dctx->tmpOutBuffer);
      FREEMEM(dctx);
    }
    return result;
}
