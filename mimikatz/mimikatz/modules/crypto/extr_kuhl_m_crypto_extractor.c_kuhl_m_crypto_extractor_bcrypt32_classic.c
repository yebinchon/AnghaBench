
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int address; int * member_1; int * member_0; } ;
typedef int * PKULL_M_MEMORY_HANDLE ;
typedef int LPCWSTR ;
typedef TYPE_1__ KULL_M_MEMORY_ADDRESS ;
typedef scalar_t__ DWORD32 ;
typedef int DWORD ;


 int KULL_M_MEMORY_GLOBAL_OWN_HANDLE ;
 int LPTR ;
 int LocalAlloc (int ,int ) ;
 int LocalFree (int ) ;
 int * ULongToPtr (scalar_t__) ;
 int kprintf (char*,...) ;
 scalar_t__ kull_m_memory_copy (TYPE_1__*,TYPE_1__*,int ) ;
 int kull_m_string_wprintf_hex (int ,int ,int ) ;

void kuhl_m_crypto_extractor_bcrypt32_classic(PKULL_M_MEMORY_HANDLE hMemory, DWORD32 addr, DWORD size, LPCWSTR num)
{
 KULL_M_MEMORY_ADDRESS address = {ULongToPtr(addr), hMemory}, aLocalBuffer = {((void*)0), &KULL_M_MEMORY_GLOBAL_OWN_HANDLE};

 if(addr && size)
 {
  kprintf(L"%s: ", num);
  if(aLocalBuffer.address = LocalAlloc(LPTR, size))
  {
   if(kull_m_memory_copy(&aLocalBuffer, &address, size))
    kull_m_string_wprintf_hex(aLocalBuffer.address, size, 0);
   LocalFree(aLocalBuffer.address);
  }
  kprintf(L"\n");
 }
}
