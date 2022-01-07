
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;
typedef scalar_t__ IpcMemoryKey ;
typedef scalar_t__ IpcMemoryId ;


 int AddToDataDirLockFile (int ,char*) ;
 int EACCES ;
 int EEXIST ;
 int EIDRM ;
 int EINVAL ;
 int ENOMEM ;
 int ENOSPC ;
 int FATAL ;
 int IPCProtection ;
 int IPC_CREAT ;
 int IPC_EXCL ;
 int IPC_RMID ;
 int Int32GetDatum (scalar_t__) ;
 int IpcMemoryDelete ;
 int IpcMemoryDetach ;
 int LOCK_FILE_LINE_SHMEM_KEY ;
 int LOG ;
 int PG_SHMAT_FLAGS ;
 int PointerGetDatum (void*) ;
 int elog (int ,char*,int,void*,...) ;
 int ereport (int ,int ) ;
 int errdetail (char*,unsigned long,int ,int) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 int errno ;
 char* getenv (char*) ;
 int on_shmem_exit (int ,int ) ;
 void* shmat (scalar_t__,void*,int ) ;
 scalar_t__ shmctl (scalar_t__,int ,int *) ;
 scalar_t__ shmget (scalar_t__,int ,int) ;
 int sprintf (char*,char*,unsigned long,unsigned long) ;
 scalar_t__ strtoul (char*,int *,int ) ;

__attribute__((used)) static void *
InternalIpcMemoryCreate(IpcMemoryKey memKey, Size size)
{
 IpcMemoryId shmid;
 void *requestedAddress = ((void*)0);
 void *memAddress;
 shmid = shmget(memKey, size, IPC_CREAT | IPC_EXCL | IPCProtection);

 if (shmid < 0)
 {
  int shmget_errno = errno;







  if (shmget_errno == EEXIST || shmget_errno == EACCES



   )
   return ((void*)0);
  if (shmget_errno == EINVAL)
  {
   shmid = shmget(memKey, 0, IPC_CREAT | IPC_EXCL | IPCProtection);

   if (shmid < 0)
   {

    if (errno == EEXIST || errno == EACCES



     )
     return ((void*)0);

   }
   else
   {






    if (shmctl(shmid, IPC_RMID, ((void*)0)) < 0)
     elog(LOG, "shmctl(%d, %d, 0) failed: %m",
       (int) shmid, IPC_RMID);
   }
  }
  errno = shmget_errno;
  ereport(FATAL,
    (errmsg("could not create shared memory segment: %m"),
     errdetail("Failed system call was shmget(key=%lu, size=%zu, 0%o).",
         (unsigned long) memKey, size,
         IPC_CREAT | IPC_EXCL | IPCProtection),
     (shmget_errno == EINVAL) ?
     errhint("This error usually means that PostgreSQL's request for a shared memory "
       "segment exceeded your kernel's SHMMAX parameter, or possibly that "
       "it is less than "
       "your kernel's SHMMIN parameter.\n"
       "The PostgreSQL documentation contains more information about shared "
       "memory configuration.") : 0,
     (shmget_errno == ENOMEM) ?
     errhint("This error usually means that PostgreSQL's request for a shared "
       "memory segment exceeded your kernel's SHMALL parameter.  You might need "
       "to reconfigure the kernel with larger SHMALL.\n"
       "The PostgreSQL documentation contains more information about shared "
       "memory configuration.") : 0,
     (shmget_errno == ENOSPC) ?
     errhint("This error does *not* mean that you have run out of disk space.  "
       "It occurs either if all available shared memory IDs have been taken, "
       "in which case you need to raise the SHMMNI parameter in your kernel, "
       "or because the system's overall limit for shared memory has been "
       "reached.\n"
       "The PostgreSQL documentation contains more information about shared "
       "memory configuration.") : 0));
 }


 on_shmem_exit(IpcMemoryDelete, Int32GetDatum(shmid));


 memAddress = shmat(shmid, requestedAddress, PG_SHMAT_FLAGS);

 if (memAddress == (void *) -1)
  elog(FATAL, "shmat(id=%d, addr=%p, flags=0x%x) failed: %m",
    shmid, requestedAddress, PG_SHMAT_FLAGS);


 on_shmem_exit(IpcMemoryDetach, PointerGetDatum(memAddress));






 {
  char line[64];

  sprintf(line, "%9lu %9lu",
    (unsigned long) memKey, (unsigned long) shmid);
  AddToDataDirLockFile(LOCK_FILE_LINE_SHMEM_KEY, line);
 }

 return memAddress;
}
