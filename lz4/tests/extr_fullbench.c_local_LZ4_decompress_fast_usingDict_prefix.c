
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LZ4_decompress_fast_usingDict (char const*,char*,int,char*,int) ;

__attribute__((used)) static int local_LZ4_decompress_fast_usingDict_prefix(const char* in, char* out, int inSize, int outSize)
{
    (void)inSize;
    LZ4_decompress_fast_usingDict(in, out, outSize, out - 65536, 65536);
    return outSize;
}
