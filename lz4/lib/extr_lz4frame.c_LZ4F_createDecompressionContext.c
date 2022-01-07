
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int version; } ;
typedef int LZ4F_errorCode_t ;
typedef TYPE_1__ LZ4F_dctx ;


 scalar_t__ ALLOC_AND_ZERO (int) ;
 int LZ4F_ERROR_allocation_failed ;
 int LZ4F_OK_NoError ;
 int err0r (int ) ;

LZ4F_errorCode_t LZ4F_createDecompressionContext(LZ4F_dctx** LZ4F_decompressionContextPtr, unsigned versionNumber)
{
    LZ4F_dctx* const dctx = (LZ4F_dctx*)ALLOC_AND_ZERO(sizeof(LZ4F_dctx));
    if (dctx == ((void*)0)) {
        *LZ4F_decompressionContextPtr = ((void*)0);
        return err0r(LZ4F_ERROR_allocation_failed);
    }

    dctx->version = versionNumber;
    *LZ4F_decompressionContextPtr = dctx;
    return LZ4F_OK_NoError;
}
