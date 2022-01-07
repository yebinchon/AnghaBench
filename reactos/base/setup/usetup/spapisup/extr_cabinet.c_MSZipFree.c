
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int voidpf ;


 int ProcessHeap ;
 int RtlFreeHeap (int ,int ,int ) ;

void
MSZipFree(voidpf opaque, voidpf address)
{
    RtlFreeHeap(ProcessHeap, 0, address);
}
