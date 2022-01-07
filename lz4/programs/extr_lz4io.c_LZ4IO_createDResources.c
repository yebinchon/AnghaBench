
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * dstFile; void* dstBuffer; void* srcBuffer; void* dstBufferSize; void* srcBufferSize; int dCtx; } ;
typedef TYPE_1__ dRess_t ;
typedef int LZ4IO_prefs_t ;
typedef int LZ4F_errorCode_t ;


 int EXM_THROW (int,char*,...) ;
 int LZ4F_VERSION ;
 int LZ4F_createDecompressionContext (int *,int ) ;
 int LZ4F_getErrorName (int const) ;
 scalar_t__ LZ4F_isError (int const) ;
 void* LZ4IO_dBufferSize ;
 int LZ4IO_loadDDict (int * const,TYPE_1__*) ;
 void* malloc (void*) ;

__attribute__((used)) static dRess_t LZ4IO_createDResources(LZ4IO_prefs_t* const prefs)
{
    dRess_t ress;


    LZ4F_errorCode_t const errorCode = LZ4F_createDecompressionContext(&ress.dCtx, LZ4F_VERSION);
    if (LZ4F_isError(errorCode)) EXM_THROW(60, "Can't create LZ4F context : %s", LZ4F_getErrorName(errorCode));


    ress.srcBufferSize = LZ4IO_dBufferSize;
    ress.srcBuffer = malloc(ress.srcBufferSize);
    ress.dstBufferSize = LZ4IO_dBufferSize;
    ress.dstBuffer = malloc(ress.dstBufferSize);
    if (!ress.srcBuffer || !ress.dstBuffer) EXM_THROW(61, "Allocation error : not enough memory");

    LZ4IO_loadDDict(prefs, &ress);

    ress.dstFile = ((void*)0);
    return ress;
}
