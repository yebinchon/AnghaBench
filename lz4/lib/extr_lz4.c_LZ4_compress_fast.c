
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LZ4_stream_t ;


 int * ALLOC (int) ;
 int FREEMEM (int * const) ;
 int LZ4_compress_fast_extState (int * const,char const*,char*,int,int,int) ;

int LZ4_compress_fast(const char* source, char* dest, int inputSize, int maxOutputSize, int acceleration)
{
    int result;




    LZ4_stream_t ctx;
    LZ4_stream_t* const ctxPtr = &ctx;

    result = LZ4_compress_fast_extState(ctxPtr, source, dest, inputSize, maxOutputSize, acceleration);




    return result;
}
