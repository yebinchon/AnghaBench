
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tmpBuff; scalar_t__ lz4CtxPtr; } ;
typedef int LZ4F_errorCode_t ;
typedef scalar_t__ LZ4F_compressionContext_t ;
typedef TYPE_1__ LZ4F_cctx_t ;


 int FREEMEM (scalar_t__) ;
 int LZ4F_OK_NoError ;

LZ4F_errorCode_t LZ4F_freeCompressionContext(LZ4F_compressionContext_t LZ4F_compressionContext)
{
    LZ4F_cctx_t* const cctxPtr = (LZ4F_cctx_t*)LZ4F_compressionContext;

    if (cctxPtr != ((void*)0)) {
       FREEMEM(cctxPtr->lz4CtxPtr);
       FREEMEM(cctxPtr->tmpBuff);
       FREEMEM(LZ4F_compressionContext);
    }

    return LZ4F_OK_NoError;
}
