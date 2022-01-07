
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int voidpf ;
typedef int uInt ;


 int ProcessHeap ;
 int RtlAllocateHeap (int ,int ,int) ;

voidpf
MSZipAlloc(voidpf opaque, uInt items, uInt size)
{
    return (voidpf)RtlAllocateHeap(ProcessHeap, 0, items * size);
}
