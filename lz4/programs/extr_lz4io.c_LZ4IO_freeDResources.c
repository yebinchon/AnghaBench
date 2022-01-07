
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dictBuffer; int dstBuffer; int srcBuffer; int dCtx; } ;
typedef TYPE_1__ dRess_t ;
typedef int LZ4F_errorCode_t ;


 int EXM_THROW (int,char*,int ) ;
 int LZ4F_freeDecompressionContext (int ) ;
 int LZ4F_getErrorName (int ) ;
 scalar_t__ LZ4F_isError (int ) ;
 int free (int ) ;

__attribute__((used)) static void LZ4IO_freeDResources(dRess_t ress)
{
    LZ4F_errorCode_t errorCode = LZ4F_freeDecompressionContext(ress.dCtx);
    if (LZ4F_isError(errorCode)) EXM_THROW(69, "Error : can't free LZ4F context resource : %s", LZ4F_getErrorName(errorCode));
    free(ress.srcBuffer);
    free(ress.dstBuffer);
    free(ress.dictBuffer);
}
