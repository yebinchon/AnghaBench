
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct compressionParameters {int LZ4_dictStream; int LZ4_stream; } ;


 int LZ4_freeStream (int ) ;

__attribute__((used)) static void LZ4_compressCleanupStream(
    const struct compressionParameters* pThis)
{
    LZ4_freeStream(pThis->LZ4_stream);
    LZ4_freeStream(pThis->LZ4_dictStream);
}
