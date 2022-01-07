
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_3__ {int * member_1; int * member_0; } ;
typedef TYPE_1__ SERVICE_TABLE_ENTRY ;
typedef int NTSTATUS ;


 int CloseHandle (int ) ;
 int CreateEvent (int *,int ,int ,int *) ;
 int FALSE ;
 int * MIMIKATZ_SERVICE ;
 int STATUS_SUCCESS ;
 int StartServiceCtrlDispatcher (TYPE_1__ const*) ;
 int TRUE ;
 int hKiwiEventRunning ;
 int * kuhl_m_service_Main ;

NTSTATUS kuhl_m_service_me(int argc, wchar_t * argv[])
{
 const SERVICE_TABLE_ENTRY DispatchTable[]= {{MIMIKATZ_SERVICE, kuhl_m_service_Main}, {((void*)0), ((void*)0)}};
 if(hKiwiEventRunning = CreateEvent(((void*)0), TRUE, FALSE, ((void*)0)))
 {
  StartServiceCtrlDispatcher(DispatchTable);
  CloseHandle(hKiwiEventRunning);
 }
 return STATUS_SUCCESS;
}
