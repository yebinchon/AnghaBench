
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LZ4_streamHC_t ;


 scalar_t__ ALLOC (int) ;
 int LZ4_initStreamHC (int * const,int) ;

LZ4_streamHC_t* LZ4_createStreamHC(void)
{
    LZ4_streamHC_t* const LZ4_streamHCPtr = (LZ4_streamHC_t*)ALLOC(sizeof(LZ4_streamHC_t));
    if (LZ4_streamHCPtr==((void*)0)) return ((void*)0);
    LZ4_initStreamHC(LZ4_streamHCPtr, sizeof(*LZ4_streamHCPtr));
    return LZ4_streamHCPtr;
}
