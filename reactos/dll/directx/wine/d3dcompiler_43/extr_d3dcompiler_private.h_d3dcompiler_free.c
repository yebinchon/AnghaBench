
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,void*) ;

__attribute__((used)) static inline BOOL d3dcompiler_free(void *ptr)
{
    return HeapFree(GetProcessHeap(), 0, ptr);
}
