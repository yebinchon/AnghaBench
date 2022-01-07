
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32 ;
typedef int Size ;
typedef int LWLockPadded ;
typedef int LWLock ;


 int InitializeLWLocks () ;
 int IsUnderPostmaster ;
 int LWLOCK_MINIMAL_SIZE ;
 int LWLOCK_PADDED_SIZE ;
 int LWLockShmemSize () ;
 int LWTRANCHE_FIRST_USER_DEFINED ;
 scalar_t__ LW_VAL_EXCLUSIVE ;
 scalar_t__ MAX_BACKENDS ;
 int * MainLWLockArray ;
 int RegisterLWLockTranches () ;
 scalar_t__ ShmemAlloc (int ) ;
 int StaticAssertStmt (int,char*) ;

void
CreateLWLocks(void)
{
 StaticAssertStmt(LW_VAL_EXCLUSIVE > (uint32) MAX_BACKENDS,
      "MAX_BACKENDS too big for lwlock.c");

 StaticAssertStmt(sizeof(LWLock) <= LWLOCK_MINIMAL_SIZE &&
      sizeof(LWLock) <= LWLOCK_PADDED_SIZE,
      "Miscalculated LWLock padding");

 if (!IsUnderPostmaster)
 {
  Size spaceLocks = LWLockShmemSize();
  int *LWLockCounter;
  char *ptr;


  ptr = (char *) ShmemAlloc(spaceLocks);


  ptr += sizeof(int);


  ptr += LWLOCK_PADDED_SIZE - ((uintptr_t) ptr) % LWLOCK_PADDED_SIZE;

  MainLWLockArray = (LWLockPadded *) ptr;





  LWLockCounter = (int *) ((char *) MainLWLockArray - sizeof(int));
  *LWLockCounter = LWTRANCHE_FIRST_USER_DEFINED;


  InitializeLWLocks();
 }


 RegisterLWLockTranches();
}
