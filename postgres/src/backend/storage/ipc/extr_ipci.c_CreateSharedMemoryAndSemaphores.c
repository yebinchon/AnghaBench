
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;
typedef int ShmemIndexEnt ;
typedef int PGShmemHeader ;


 int ApplyLauncherShmemInit () ;
 int ApplyLauncherShmemSize () ;
 int AsyncShmemInit () ;
 int AsyncShmemSize () ;
 int AutoVacuumShmemInit () ;
 int AutoVacuumShmemSize () ;
 int BTreeShmemInit () ;
 int BTreeShmemSize () ;
 int BackendStatusShmemSize () ;
 int BackgroundWorkerShmemInit () ;
 int BackgroundWorkerShmemSize () ;
 int BufferShmemSize () ;
 int CLOGShmemInit () ;
 int CLOGShmemSize () ;
 int CheckpointerShmemInit () ;
 int CheckpointerShmemSize () ;
 int CommitTsShmemInit () ;
 int CommitTsShmemSize () ;
 int CreateLWLocks () ;
 int CreateSharedBackendStatus () ;
 int CreateSharedInvalidationState () ;
 int CreateSharedProcArray () ;
 int DEBUG3 ;
 int InitBufferPool () ;
 int InitLocks () ;
 int InitPredicateLocks () ;
 int InitProcGlobal () ;
 int InitShmemAccess (int *) ;
 int InitShmemAllocation () ;
 int InitShmemIndex () ;
 int IsUnderPostmaster ;
 int LWLockShmemSize () ;
 int LockShmemSize () ;
 int MultiXactShmemInit () ;
 int MultiXactShmemSize () ;
 int PANIC ;
 int PGReserveSemaphores (int) ;
 int PGSemaphoreShmemSize (int) ;
 int * PGSharedMemoryCreate (int,int **) ;
 int PMSignalShmemInit () ;
 int PMSignalShmemSize () ;
 int PredicateLockShmemSize () ;
 int ProcArrayShmemSize () ;
 int ProcGlobalSemas () ;
 int ProcGlobalShmemSize () ;
 int ProcSignalShmemInit () ;
 int ProcSignalShmemSize () ;
 int ReplicationOriginShmemInit () ;
 int ReplicationOriginShmemSize () ;
 int ReplicationSlotsShmemInit () ;
 int ReplicationSlotsShmemSize () ;
 int SHMEM_INDEX_SIZE ;
 int SInvalShmemSize () ;
 int SUBTRANSShmemInit () ;
 int SUBTRANSShmemSize () ;
 int ShmemBackendArrayAllocation () ;
 int ShmemBackendArraySize () ;
 int SnapMgrInit () ;
 int SnapMgrShmemSize () ;
 int SpinlockSemaInit () ;
 int SpinlockSemaSize () ;
 scalar_t__ SpinlockSemas () ;
 int SyncScanShmemInit () ;
 int SyncScanShmemSize () ;
 int TwoPhaseShmemInit () ;
 int TwoPhaseShmemSize () ;
 int WalRcvShmemInit () ;
 int WalRcvShmemSize () ;
 int WalSndShmemInit () ;
 int WalSndShmemSize () ;
 int XLOGShmemInit () ;
 int XLOGShmemSize () ;
 int add_size (int,int) ;
 int addin_request_allowed ;
 int dsm_postmaster_startup (int *) ;
 int elog (int ,char*,...) ;
 int hash_estimate_size (int ,int) ;
 int shmem_startup_hook () ;
 int total_addin_request ;

void
CreateSharedMemoryAndSemaphores(void)
{
 PGShmemHeader *shim = ((void*)0);

 if (!IsUnderPostmaster)
 {
  PGShmemHeader *seghdr;
  Size size;
  int numSemas;


  numSemas = ProcGlobalSemas();
  numSemas += SpinlockSemas();
  size = 100000;
  size = add_size(size, PGSemaphoreShmemSize(numSemas));
  size = add_size(size, SpinlockSemaSize());
  size = add_size(size, hash_estimate_size(SHMEM_INDEX_SIZE,
             sizeof(ShmemIndexEnt)));
  size = add_size(size, BufferShmemSize());
  size = add_size(size, LockShmemSize());
  size = add_size(size, PredicateLockShmemSize());
  size = add_size(size, ProcGlobalShmemSize());
  size = add_size(size, XLOGShmemSize());
  size = add_size(size, CLOGShmemSize());
  size = add_size(size, CommitTsShmemSize());
  size = add_size(size, SUBTRANSShmemSize());
  size = add_size(size, TwoPhaseShmemSize());
  size = add_size(size, BackgroundWorkerShmemSize());
  size = add_size(size, MultiXactShmemSize());
  size = add_size(size, LWLockShmemSize());
  size = add_size(size, ProcArrayShmemSize());
  size = add_size(size, BackendStatusShmemSize());
  size = add_size(size, SInvalShmemSize());
  size = add_size(size, PMSignalShmemSize());
  size = add_size(size, ProcSignalShmemSize());
  size = add_size(size, CheckpointerShmemSize());
  size = add_size(size, AutoVacuumShmemSize());
  size = add_size(size, ReplicationSlotsShmemSize());
  size = add_size(size, ReplicationOriginShmemSize());
  size = add_size(size, WalSndShmemSize());
  size = add_size(size, WalRcvShmemSize());
  size = add_size(size, ApplyLauncherShmemSize());
  size = add_size(size, SnapMgrShmemSize());
  size = add_size(size, BTreeShmemSize());
  size = add_size(size, SyncScanShmemSize());
  size = add_size(size, AsyncShmemSize());





  addin_request_allowed = 0;
  size = add_size(size, total_addin_request);


  size = add_size(size, 8192 - (size % 8192));

  elog(DEBUG3, "invoking IpcMemoryCreate(size=%zu)", size);




  seghdr = PGSharedMemoryCreate(size, &shim);

  InitShmemAccess(seghdr);




  PGReserveSemaphores(numSemas);






  SpinlockSemaInit();

 }
 else
 {





  elog(PANIC, "should be attached to shared memory already");

 }




 if (!IsUnderPostmaster)
  InitShmemAllocation();





 CreateLWLocks();




 InitShmemIndex();




 XLOGShmemInit();
 CLOGShmemInit();
 CommitTsShmemInit();
 SUBTRANSShmemInit();
 MultiXactShmemInit();
 InitBufferPool();




 InitLocks();




 InitPredicateLocks();




 if (!IsUnderPostmaster)
  InitProcGlobal();
 CreateSharedProcArray();
 CreateSharedBackendStatus();
 TwoPhaseShmemInit();
 BackgroundWorkerShmemInit();




 CreateSharedInvalidationState();




 PMSignalShmemInit();
 ProcSignalShmemInit();
 CheckpointerShmemInit();
 AutoVacuumShmemInit();
 ReplicationSlotsShmemInit();
 ReplicationOriginShmemInit();
 WalSndShmemInit();
 WalRcvShmemInit();
 ApplyLauncherShmemInit();




 SnapMgrInit();
 BTreeShmemInit();
 SyncScanShmemInit();
 AsyncShmemInit();
 if (!IsUnderPostmaster)
  dsm_postmaster_startup(shim);




 if (shmem_startup_hook)
  shmem_startup_hook();
}
