
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int PROCSIG_PARALLEL_MESSAGE ;
 int ParallelMasterBackendId ;
 int ParallelMasterPid ;
 int SendProcSignal (int ,int ,int ) ;

__attribute__((used)) static void
ParallelWorkerShutdown(int code, Datum arg)
{
 SendProcSignal(ParallelMasterPid,
       PROCSIG_PARALLEL_MESSAGE,
       ParallelMasterBackendId);
}
