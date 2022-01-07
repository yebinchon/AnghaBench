
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union semun {int val; } ;
typedef int IpcSemaphoreId ;


 int ERANGE ;
 int FATAL ;
 int SETVAL ;
 int ereport (int ,int ) ;
 int errhint (char*,int) ;
 int errmsg_internal (char*,int ,int,int) ;
 int errno ;
 scalar_t__ semctl (int ,int,int ,union semun) ;

__attribute__((used)) static void
IpcSemaphoreInitialize(IpcSemaphoreId semId, int semNum, int value)
{
 union semun semun;

 semun.val = value;
 if (semctl(semId, semNum, SETVAL, semun) < 0)
 {
  int saved_errno = errno;

  ereport(FATAL,
    (errmsg_internal("semctl(%d, %d, SETVAL, %d) failed: %m",
         semId, semNum, value),
     (saved_errno == ERANGE) ?
     errhint("You possibly need to raise your kernel's SEMVMX value to be at least "
       "%d.  Look into the PostgreSQL documentation for details.",
       value) : 0));
 }
}
