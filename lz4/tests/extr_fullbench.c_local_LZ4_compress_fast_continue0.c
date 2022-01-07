
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LZ4_compressBound (int) ;
 int LZ4_compress_fast_continue (int *,char const*,char*,int,int ,int ) ;
 int LZ4_stream ;

__attribute__((used)) static int local_LZ4_compress_fast_continue0(const char* in, char* out, int inSize)
{
    return LZ4_compress_fast_continue(&LZ4_stream, in, out, inSize, LZ4_compressBound(inSize), 0);
}
