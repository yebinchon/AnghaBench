
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct compressionParameters {int dictSize; int dictBuf; void* LZ4_dictStreamHC; void* LZ4_streamHC; int * LZ4_dictStream; int * LZ4_stream; } ;


 void* LZ4_createStreamHC () ;
 int LZ4_loadDictHC (void*,int ,int ) ;

__attribute__((used)) static void LZ4_compressInitStreamHC(
    struct compressionParameters* pThis)
{
    pThis->LZ4_stream = ((void*)0);
    pThis->LZ4_dictStream = ((void*)0);
    pThis->LZ4_streamHC = LZ4_createStreamHC();
    pThis->LZ4_dictStreamHC = LZ4_createStreamHC();
    LZ4_loadDictHC(pThis->LZ4_dictStreamHC, pThis->dictBuf, pThis->dictSize);
}
