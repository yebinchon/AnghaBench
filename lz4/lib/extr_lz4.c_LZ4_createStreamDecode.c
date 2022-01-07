
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LZ4_streamDecode_t_internal ;
typedef int LZ4_streamDecode_t ;


 scalar_t__ ALLOC_AND_ZERO (int) ;
 int LZ4_STATIC_ASSERT (int) ;
 int LZ4_STREAMDECODESIZE ;

LZ4_streamDecode_t* LZ4_createStreamDecode(void)
{
    LZ4_streamDecode_t* lz4s = (LZ4_streamDecode_t*) ALLOC_AND_ZERO(sizeof(LZ4_streamDecode_t));
    LZ4_STATIC_ASSERT(LZ4_STREAMDECODESIZE >= sizeof(LZ4_streamDecode_t_internal));
    return lz4s;
}
