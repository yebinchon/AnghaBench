
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int d_name; } ;
typedef scalar_t__ TransactionId ;
typedef int DIR ;


 int * AllocateDir (int ) ;
 int FreeDir (int *) ;
 int InvalidRepOriginId ;
 int InvalidXLogRecPtr ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int PrepareRedoAdd (char*,int ,int ,int ) ;
 char* ProcessTwoPhaseBuffer (scalar_t__,int ,int,int,int) ;
 struct dirent* ReadDir (int *,int ) ;
 int TWOPHASE_DIR ;
 int TwoPhaseStateLock ;
 int strlen (int ) ;
 int strspn (int ,char*) ;
 scalar_t__ strtoul (int ,int *,int) ;

void
restoreTwoPhaseData(void)
{
 DIR *cldir;
 struct dirent *clde;

 LWLockAcquire(TwoPhaseStateLock, LW_EXCLUSIVE);
 cldir = AllocateDir(TWOPHASE_DIR);
 while ((clde = ReadDir(cldir, TWOPHASE_DIR)) != ((void*)0))
 {
  if (strlen(clde->d_name) == 8 &&
   strspn(clde->d_name, "0123456789ABCDEF") == 8)
  {
   TransactionId xid;
   char *buf;

   xid = (TransactionId) strtoul(clde->d_name, ((void*)0), 16);

   buf = ProcessTwoPhaseBuffer(xid, InvalidXLogRecPtr,
          1, 0, 0);
   if (buf == ((void*)0))
    continue;

   PrepareRedoAdd(buf, InvalidXLogRecPtr,
         InvalidXLogRecPtr, InvalidRepOriginId);
  }
 }
 LWLockRelease(TwoPhaseStateLock);
 FreeDir(cldir);
}
