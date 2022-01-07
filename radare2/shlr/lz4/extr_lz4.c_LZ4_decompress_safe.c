
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 int LZ4_decompress_generic (char const*,char*,int,int,int ,int ,int ,int ,int *,int *,int ) ;
 int endOnInputSize ;
 int full ;
 int noDict ;

int LZ4_decompress_safe(const char* source, char* dest, int compressedSize, int maxDecompressedSize)
{
 return LZ4_decompress_generic(source, dest, compressedSize, maxDecompressedSize, endOnInputSize, full, 0, noDict, (ut8*)dest, ((void*)0), 0);
}
