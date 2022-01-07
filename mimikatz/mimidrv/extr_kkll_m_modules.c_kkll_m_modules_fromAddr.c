
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG_PTR ;
struct TYPE_3__ {int isFound; int member_1; int member_0; } ;
typedef int PVOID ;
typedef int PKIWI_BUFFER ;
typedef int NTSTATUS ;
typedef TYPE_1__ KKLL_M_MODULE_FROM_ADDR ;


 int FALSE ;
 scalar_t__ NT_SUCCESS (int ) ;
 int kkll_m_modules_enum (int ,int *,int ,int ,TYPE_1__*) ;
 int kkll_m_modules_fromAddr_callback ;
 int kprintf (int ,char*,int ) ;

NTSTATUS kkll_m_modules_fromAddr(PKIWI_BUFFER outBuffer, PVOID addr)
{
 KKLL_M_MODULE_FROM_ADDR structAddr = {FALSE, (ULONG_PTR) addr};
 NTSTATUS status = kkll_m_modules_enum(0, ((void*)0), outBuffer, kkll_m_modules_fromAddr_callback, &structAddr);

 if(NT_SUCCESS(status) && !structAddr.isFound)
  status = kprintf(outBuffer, L"0x%p [ ? ]\n", addr);

 return status;
}
