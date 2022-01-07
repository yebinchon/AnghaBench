
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int version; scalar_t__ cStage; } ;
typedef int LZ4F_errorCode_t ;
typedef scalar_t__ LZ4F_compressionContext_t ;
typedef TYPE_1__ LZ4F_cctx_t ;


 scalar_t__ ALLOC_AND_ZERO (int) ;
 int LZ4F_ERROR_allocation_failed ;
 int LZ4F_OK_NoError ;
 int err0r (int ) ;

LZ4F_errorCode_t LZ4F_createCompressionContext(LZ4F_compressionContext_t* LZ4F_compressionContextPtr, unsigned version)
{
    LZ4F_cctx_t* const cctxPtr = (LZ4F_cctx_t*)ALLOC_AND_ZERO(sizeof(LZ4F_cctx_t));
    if (cctxPtr==((void*)0)) return err0r(LZ4F_ERROR_allocation_failed);

    cctxPtr->version = version;
    cctxPtr->cStage = 0;

    *LZ4F_compressionContextPtr = (LZ4F_compressionContext_t)cctxPtr;

    return LZ4F_OK_NoError;
}
