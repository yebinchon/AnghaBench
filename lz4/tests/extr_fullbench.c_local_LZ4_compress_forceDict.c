
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LZ4_compress_forceExtDict (int *,char const*,char*,int) ;
 int LZ4_stream ;

__attribute__((used)) static int local_LZ4_compress_forceDict(const char* in, char* out, int inSize)
{
    return LZ4_compress_forceExtDict(&LZ4_stream, in, out, inSize);
}
