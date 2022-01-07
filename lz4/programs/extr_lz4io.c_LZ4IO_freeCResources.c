
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctx; int * cdict; int dstBuffer; int srcBuffer; } ;
typedef TYPE_1__ cRess_t ;
typedef int LZ4F_errorCode_t ;


 int EXM_THROW (int,char*,int ) ;
 int LZ4F_freeCDict (int *) ;
 int LZ4F_freeCompressionContext (int ) ;
 int LZ4F_getErrorName (int const) ;
 scalar_t__ LZ4F_isError (int const) ;
 int free (int ) ;

__attribute__((used)) static void LZ4IO_freeCResources(cRess_t ress)
{
    free(ress.srcBuffer);
    free(ress.dstBuffer);

    LZ4F_freeCDict(ress.cdict);
    ress.cdict = ((void*)0);

    { LZ4F_errorCode_t const errorCode = LZ4F_freeCompressionContext(ress.ctx);
      if (LZ4F_isError(errorCode)) EXM_THROW(38, "Error : can't free LZ4F context resource : %s", LZ4F_getErrorName(errorCode)); }
}
