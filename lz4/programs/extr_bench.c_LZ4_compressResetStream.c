
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct compressionParameters {int LZ4_dictStream; int LZ4_stream; } ;


 int LZ4_attach_dictionary (int ,int ) ;
 int LZ4_resetStream_fast (int ) ;

__attribute__((used)) static void LZ4_compressResetStream(
    const struct compressionParameters* pThis)
{
    LZ4_resetStream_fast(pThis->LZ4_stream);
    LZ4_attach_dictionary(pThis->LZ4_stream, pThis->LZ4_dictStream);
}
