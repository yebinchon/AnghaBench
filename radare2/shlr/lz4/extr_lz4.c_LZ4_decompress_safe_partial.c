
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 int LZ4_decompress_generic (char const*,char*,int,int,int ,int ,int,int ,int *,int *,int ) ;
 int endOnInputSize ;
 int noDict ;
 int partial ;

int LZ4_decompress_safe_partial(const char* source, char* dest, int compressedSize, int targetOutputSize, int maxDecompressedSize)
{
 return LZ4_decompress_generic(source, dest, compressedSize, maxDecompressedSize, endOnInputSize, partial, targetOutputSize, noDict, (ut8*)dest, ((void*)0), 0);
}
