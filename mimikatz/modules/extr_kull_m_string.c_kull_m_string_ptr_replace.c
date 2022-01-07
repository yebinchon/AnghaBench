
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SIZE_T ;
typedef int * PVOID ;
typedef scalar_t__ DWORD64 ;


 int LPTR ;
 int * LocalAlloc (int ,int ) ;
 int RtlCopyMemory (int *,int *,size_t) ;

void kull_m_string_ptr_replace(PVOID ptr, DWORD64 size)
{
 PVOID tempPtr = ((void*)0);
 if(size)
  if(tempPtr = LocalAlloc(LPTR, (SIZE_T) size))
   RtlCopyMemory(tempPtr, *(PVOID *) ptr, (size_t) size);
 *(PVOID *) ptr = tempPtr;
}
