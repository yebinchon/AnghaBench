
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ImageBase; } ;
struct TYPE_7__ {int ImageSize; TYPE_1__ BasicInfo; } ;
struct TYPE_6__ {int size; scalar_t__ addr; } ;
typedef int SIZE_T ;
typedef scalar_t__ PVOID ;
typedef scalar_t__ PUCHAR ;
typedef TYPE_2__* PKKLL_M_MODULE_BASIC_INFOS ;
typedef int PKIWI_BUFFER ;
typedef TYPE_3__* PAUX_MODULE_EXTENDED_INFO ;
typedef int NTSTATUS ;
typedef int BOOLEAN ;


 int FALSE ;
 int STATUS_SUCCESS ;

NTSTATUS kkll_m_modules_first_callback(SIZE_T szBufferIn, PVOID bufferIn, PKIWI_BUFFER outBuffer, PAUX_MODULE_EXTENDED_INFO pModule, PVOID pvArg, BOOLEAN * mustContinue)
{
 *mustContinue = FALSE;
 ((PKKLL_M_MODULE_BASIC_INFOS) pvArg)->addr = (PUCHAR) pModule->BasicInfo.ImageBase;
 ((PKKLL_M_MODULE_BASIC_INFOS) pvArg)->size = pModule->ImageSize;
 return STATUS_SUCCESS;
}
