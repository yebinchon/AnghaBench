
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int VOID ;
typedef size_t ULONG ;
struct TYPE_12__ {TYPE_4__* hLsassMem; } ;
struct TYPE_11__ {int type; TYPE_1__* pHandleProcessDmp; TYPE_2__* pHandleProcess; } ;
struct TYPE_10__ {int Module; } ;
struct TYPE_9__ {int hProcess; } ;
struct TYPE_8__ {int hMinidump; } ;
typedef int KUHL_M_SEKURLSA_LIB ;
typedef int HANDLE ;


 size_t ARRAYSIZE (TYPE_3__**) ;
 int CloseHandle (int ) ;


 int RtlZeroMemory (int *,int) ;
 TYPE_6__ cLsass ;
 int free (int *) ;
 int kuhl_m_sekurlsa_clean () ;
 TYPE_4__* kull_m_memory_close (TYPE_4__*) ;
 TYPE_3__** lsassPackages ;
 int * pMinidumpName ;

VOID kuhl_m_sekurlsa_reset()
{
 HANDLE toClose;
 ULONG i;

 if(pMinidumpName)
 {
  free(pMinidumpName);
  pMinidumpName = ((void*)0);
 }

 if(cLsass.hLsassMem)
 {
  switch(cLsass.hLsassMem->type)
  {
  case 129:
   toClose = cLsass.hLsassMem->pHandleProcess->hProcess;
   break;
  case 128:
   toClose = cLsass.hLsassMem->pHandleProcessDmp->hMinidump;
   break;
  default:
   ;
  }
  cLsass.hLsassMem = kull_m_memory_close(cLsass.hLsassMem);
  CloseHandle(toClose);
  kuhl_m_sekurlsa_clean();
 }
 for(i = 0; i < ARRAYSIZE(lsassPackages); i++)
  RtlZeroMemory(&lsassPackages[i]->Module, sizeof(KUHL_M_SEKURLSA_LIB));
}
