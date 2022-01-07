
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LZ4_stream_t_internal ;
typedef int LZ4_stream_t ;


 scalar_t__ ALLOC (int) ;
 int DEBUGLOG (int,char*,int * const) ;
 int LZ4_STATIC_ASSERT (int) ;
 int LZ4_STREAMSIZE ;
 int LZ4_initStream (int * const,int) ;

LZ4_stream_t* LZ4_createStream(void)
{
    LZ4_stream_t* const lz4s = (LZ4_stream_t*)ALLOC(sizeof(LZ4_stream_t));
    LZ4_STATIC_ASSERT(LZ4_STREAMSIZE >= sizeof(LZ4_stream_t_internal));
    DEBUGLOG(4, "LZ4_createStream %p", lz4s);
    if (lz4s == ((void*)0)) return ((void*)0);
    LZ4_initStream(lz4s, sizeof(*lz4s));
    return lz4s;
}
