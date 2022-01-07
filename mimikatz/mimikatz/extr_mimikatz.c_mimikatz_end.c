
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ExitProcess (int ) ;
 int FALSE ;
 int HandlerRoutine ;
 int STATUS_SUCCESS ;
 int SetConsoleCtrlHandler (int ,int ) ;
 int kull_m_output_clean () ;
 int mimikatz_initOrClean (int ) ;

void mimikatz_end()
{
 mimikatz_initOrClean(FALSE);

 SetConsoleCtrlHandler(HandlerRoutine, FALSE);

 kull_m_output_clean();

 ExitProcess(STATUS_SUCCESS);

}
