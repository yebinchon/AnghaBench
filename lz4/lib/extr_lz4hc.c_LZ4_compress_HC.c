
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LZ4_streamHC_t ;


 scalar_t__ ALLOC (int) ;
 int FREEMEM (int * const) ;
 int LZ4_compress_HC_extStateHC (int * const,char const*,char*,int,int,int) ;

int LZ4_compress_HC(const char* src, char* dst, int srcSize, int dstCapacity, int compressionLevel)
{



    LZ4_streamHC_t state;
    LZ4_streamHC_t* const statePtr = &state;

    int const cSize = LZ4_compress_HC_extStateHC(statePtr, src, dst, srcSize, dstCapacity, compressionLevel);



    return cSize;
}
