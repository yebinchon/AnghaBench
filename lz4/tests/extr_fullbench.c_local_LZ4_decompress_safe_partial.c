
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LZ4_decompress_safe_partial (char const*,char*,int,int,int) ;

__attribute__((used)) static int local_LZ4_decompress_safe_partial(const char* in, char* out, int inSize, int outSize)
{
    int result = LZ4_decompress_safe_partial(in, out, inSize, outSize - 5, outSize);
    if (result < 0) return result;
    return outSize;
}
