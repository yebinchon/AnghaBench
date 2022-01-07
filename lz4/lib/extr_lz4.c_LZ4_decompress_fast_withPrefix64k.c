
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LZ4_decompress_fast (char const*,char*,int) ;

int LZ4_decompress_fast_withPrefix64k(const char* source, char* dest, int originalSize)
{


    return LZ4_decompress_fast(source, dest, originalSize);
}
