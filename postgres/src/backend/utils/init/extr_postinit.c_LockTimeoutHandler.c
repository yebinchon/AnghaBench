
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MyProcPid ;
 int SIGINT ;
 int kill (int ,int ) ;

__attribute__((used)) static void
LockTimeoutHandler(void)
{




 kill(MyProcPid, SIGINT);
}
