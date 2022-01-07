
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct compressionParameters {int LZ4_dictStreamHC; int LZ4_streamHC; } ;


 int LZ4_freeStreamHC (int ) ;

__attribute__((used)) static void LZ4_compressCleanupStreamHC(
    const struct compressionParameters* pThis)
{
    LZ4_freeStreamHC(pThis->LZ4_streamHC);
    LZ4_freeStreamHC(pThis->LZ4_dictStreamHC);
}
