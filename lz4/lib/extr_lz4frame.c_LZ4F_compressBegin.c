
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LZ4F_preferences_t ;
typedef int LZ4F_cctx ;


 size_t LZ4F_compressBegin_usingCDict (int *,void*,size_t,int *,int const*) ;

size_t LZ4F_compressBegin(LZ4F_cctx* cctxPtr,
                          void* dstBuffer, size_t dstCapacity,
                          const LZ4F_preferences_t* preferencesPtr)
{
    return LZ4F_compressBegin_usingCDict(cctxPtr, dstBuffer, dstCapacity,
                                         ((void*)0), preferencesPtr);
}
