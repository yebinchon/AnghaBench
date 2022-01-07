
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct compressionParameters {int dictSize; int dictBuf; void* LZ4_dictStream; int * LZ4_dictStreamHC; int * LZ4_streamHC; void* LZ4_stream; } ;


 void* LZ4_createStream () ;
 int LZ4_loadDict (void*,int ,int ) ;

__attribute__((used)) static void LZ4_compressInitStream(
    struct compressionParameters* pThis)
{
    pThis->LZ4_stream = LZ4_createStream();
    pThis->LZ4_dictStream = LZ4_createStream();
    pThis->LZ4_streamHC = ((void*)0);
    pThis->LZ4_dictStreamHC = ((void*)0);
    LZ4_loadDict(pThis->LZ4_dictStream, pThis->dictBuf, pThis->dictSize);
}
