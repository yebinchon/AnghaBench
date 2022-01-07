
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct compressionParameters {int LZ4_dictStreamHC; int LZ4_streamHC; int cLevel; } ;


 int LZ4_attach_HC_dictionary (int ,int ) ;
 int LZ4_resetStreamHC_fast (int ,int ) ;

__attribute__((used)) static void LZ4_compressResetStreamHC(
    const struct compressionParameters* pThis)
{
    LZ4_resetStreamHC_fast(pThis->LZ4_streamHC, pThis->cLevel);
    LZ4_attach_HC_dictionary(pThis->LZ4_streamHC, pThis->LZ4_dictStreamHC);
}
