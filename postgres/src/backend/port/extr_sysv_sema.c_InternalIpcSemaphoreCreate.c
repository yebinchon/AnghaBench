
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ IpcSemaphoreKey ;
typedef int IpcSemaphoreId ;


 int EACCES ;
 int EEXIST ;
 int EIDRM ;
 int ENOSPC ;
 int FATAL ;
 int IPCProtection ;
 int IPC_CREAT ;
 int IPC_EXCL ;
 int ereport (int ,int ) ;
 int errdetail (char*,unsigned long,int,int) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 int errno ;
 int semget (scalar_t__,int,int) ;

__attribute__((used)) static IpcSemaphoreId
InternalIpcSemaphoreCreate(IpcSemaphoreKey semKey, int numSems)
{
 int semId;

 semId = semget(semKey, numSems, IPC_CREAT | IPC_EXCL | IPCProtection);

 if (semId < 0)
 {
  int saved_errno = errno;







  if (saved_errno == EEXIST || saved_errno == EACCES



   )
   return -1;




  ereport(FATAL,
    (errmsg("could not create semaphores: %m"),
     errdetail("Failed system call was semget(%lu, %d, 0%o).",
         (unsigned long) semKey, numSems,
         IPC_CREAT | IPC_EXCL | IPCProtection),
     (saved_errno == ENOSPC) ?
     errhint("This error does *not* mean that you have run out of disk space.  "
       "It occurs when either the system limit for the maximum number of "
       "semaphore sets (SEMMNI), or the system wide maximum number of "
       "semaphores (SEMMNS), would be exceeded.  You need to raise the "
       "respective kernel parameter.  Alternatively, reduce PostgreSQL's "
       "consumption of semaphores by reducing its max_connections parameter.\n"
       "The PostgreSQL documentation contains more information about "
       "configuring your system for PostgreSQL.") : 0));
 }

 return semId;
}
