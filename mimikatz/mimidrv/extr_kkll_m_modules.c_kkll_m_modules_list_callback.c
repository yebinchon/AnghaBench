
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ImageBase; } ;
struct TYPE_5__ {scalar_t__ FileNameOffset; scalar_t__ FullPathName; int ImageSize; TYPE_1__ BasicInfo; } ;
typedef int SIZE_T ;
typedef int PVOID ;
typedef int PKIWI_BUFFER ;
typedef TYPE_2__* PAUX_MODULE_EXTENDED_INFO ;
typedef int NTSTATUS ;
typedef int BOOLEAN ;


 int kprintf (int ,char*,int ,int ,scalar_t__) ;

NTSTATUS kkll_m_modules_list_callback(SIZE_T szBufferIn, PVOID bufferIn, PKIWI_BUFFER outBuffer, PAUX_MODULE_EXTENDED_INFO pModule, PVOID pvArg, BOOLEAN * mustContinue)
{
 return kprintf(outBuffer, L"0x%p - %u\t%S\n", pModule->BasicInfo.ImageBase, pModule->ImageSize, pModule->FullPathName + pModule->FileNameOffset);
}
