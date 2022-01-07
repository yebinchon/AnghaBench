
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct compressionParameters {int * LZ4_dictStreamHC; int * LZ4_streamHC; int * LZ4_dictStream; int * LZ4_stream; } ;



__attribute__((used)) static void LZ4_compressInitNoStream(
    struct compressionParameters* pThis)
{
    pThis->LZ4_stream = ((void*)0);
    pThis->LZ4_dictStream = ((void*)0);
    pThis->LZ4_streamHC = ((void*)0);
    pThis->LZ4_dictStreamHC = ((void*)0);
}
