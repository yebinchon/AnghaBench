
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t_a ;
typedef int LZ4_streamHC_t ;



__attribute__((used)) static size_t LZ4_streamHC_t_alignment(void)
{
    struct { char c; LZ4_streamHC_t t; } t_a;
    return sizeof(t_a) - sizeof(t_a.t);
}
