
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dictSize; int * dict; int dStage; } ;
typedef TYPE_1__ LZ4F_dctx ;


 int dstage_getFrameHeader ;

void LZ4F_resetDecompressionContext(LZ4F_dctx* dctx)
{
    dctx->dStage = dstage_getFrameHeader;
    dctx->dict = ((void*)0);
    dctx->dictSize = 0;
}
