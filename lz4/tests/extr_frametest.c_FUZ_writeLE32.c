
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef scalar_t__ BYTE ;



__attribute__((used)) static void FUZ_writeLE32 (void* dstVoidPtr, U32 value32)
{
    BYTE* dstPtr = (BYTE*)dstVoidPtr;
    dstPtr[0] = (BYTE) value32;
    dstPtr[1] = (BYTE)(value32 >> 8);
    dstPtr[2] = (BYTE)(value32 >> 16);
    dstPtr[3] = (BYTE)(value32 >> 24);
}
