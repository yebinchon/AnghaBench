
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LZ4_streamDecode_t ;


 int FREEMEM (int *) ;

int LZ4_freeStreamDecode (LZ4_streamDecode_t* LZ4_stream)
{
    if (LZ4_stream == ((void*)0)) { return 0; }
    FREEMEM(LZ4_stream);
    return 0;
}
