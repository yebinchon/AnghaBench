
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LZ4_decompress_safe_usingDict (char const*,char*,int,int,char*,int) ;

__attribute__((used)) static int local_LZ4_decompress_safe_usingDict(const char* in, char* out, int inSize, int outSize)
{
    (void)inSize;
    LZ4_decompress_safe_usingDict(in, out, inSize, outSize, out - 65536, 65536);
    return outSize;
}
