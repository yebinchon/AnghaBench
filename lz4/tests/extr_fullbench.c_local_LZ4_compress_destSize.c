
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ LZ4_compressBound (int) ;
 int LZ4_compress_destSize (char const*,char*,int*,scalar_t__) ;

__attribute__((used)) static int local_LZ4_compress_destSize(const char* in, char* out, int inSize)
{
    return LZ4_compress_destSize(in, out, &inSize, LZ4_compressBound(inSize)-1);
}
