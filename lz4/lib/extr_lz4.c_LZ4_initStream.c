
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LZ4_stream_t ;


 int DEBUGLOG (int,char*) ;
 int LZ4_stream_t_alignment () ;
 int MEM_INIT (void*,int ,int) ;

LZ4_stream_t* LZ4_initStream (void* buffer, size_t size)
{
    DEBUGLOG(5, "LZ4_initStream");
    if (buffer == ((void*)0)) { return ((void*)0); }
    if (size < sizeof(LZ4_stream_t)) { return ((void*)0); }



    if (((size_t)buffer) & (LZ4_stream_t_alignment() - 1)) { return ((void*)0); }

    MEM_INIT(buffer, 0, sizeof(LZ4_stream_t));
    return (LZ4_stream_t*)buffer;
}
