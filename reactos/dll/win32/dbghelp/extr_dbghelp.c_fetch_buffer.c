
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct process {unsigned int buffer_size; void* buffer; } ;


 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,unsigned int) ;
 void* HeapReAlloc (int ,int ,void*,unsigned int) ;

void* fetch_buffer(struct process* pcs, unsigned size)
{
    if (size > pcs->buffer_size)
    {
        if (pcs->buffer)
            pcs->buffer = HeapReAlloc(GetProcessHeap(), 0, pcs->buffer, size);
        else
            pcs->buffer = HeapAlloc(GetProcessHeap(), 0, size);
        pcs->buffer_size = (pcs->buffer) ? size : 0;
    }
    return pcs->buffer;
}
