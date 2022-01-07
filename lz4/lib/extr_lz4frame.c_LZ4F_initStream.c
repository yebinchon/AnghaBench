
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * HCCtx; int * fastCtx; } ;
typedef int LZ4_stream_t ;
typedef int LZ4_streamHC_t ;
typedef scalar_t__ LZ4F_blockMode_t ;
typedef TYPE_1__ LZ4F_CDict ;


 scalar_t__ LZ4F_blockLinked ;
 int LZ4HC_CLEVEL_MIN ;
 int LZ4_attach_HC_dictionary (int *,int *) ;
 int LZ4_attach_dictionary (int *,int *) ;
 int LZ4_resetStreamHC_fast (int *,int) ;
 int LZ4_resetStream_fast (int *) ;

__attribute__((used)) static void LZ4F_initStream(void* ctx,
                            const LZ4F_CDict* cdict,
                            int level,
                            LZ4F_blockMode_t blockMode) {
    if (level < LZ4HC_CLEVEL_MIN) {
        if (cdict != ((void*)0) || blockMode == LZ4F_blockLinked) {






            LZ4_resetStream_fast((LZ4_stream_t*)ctx);
        }
        LZ4_attach_dictionary((LZ4_stream_t *)ctx, cdict ? cdict->fastCtx : ((void*)0));
    } else {
        LZ4_resetStreamHC_fast((LZ4_streamHC_t*)ctx, level);
        LZ4_attach_HC_dictionary((LZ4_streamHC_t *)ctx, cdict ? cdict->HCCtx : ((void*)0));
    }
}
