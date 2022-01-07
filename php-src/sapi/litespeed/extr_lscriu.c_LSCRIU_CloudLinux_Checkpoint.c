
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LSAPI_reset_server_state () ;
 int LSCRIU_Set_Initial_Start_Reqs (int ) ;
 int LSCRIU_Wink_Server_is_Ready () ;
 int errno ;
 int getpid () ;
 int getppid () ;
 int lscriu_dbg (char*,int ) ;
 int lscriu_err (char*,int ,...) ;
 int s_lscapi_dump_me () ;
 int s_native ;
 int s_pid ;
 int s_restored ;
 int strerror (int ) ;

__attribute__((used)) static void LSCRIU_CloudLinux_Checkpoint(void)
{
    int iRet;

    if ((!s_native) && (!s_lscapi_dump_me)) {
        lscriu_dbg("LSCRIU (%d): Not native and unable to dump - abandon one-time "
                   "dump\n", s_pid);
        return;
    }

    iRet = s_lscapi_dump_me();
    if (iRet < 0) {
        lscriu_err("LSCRIU: CloudLinux dump of PID: %d, error: %s\n",
                   s_pid, strerror(errno));
    }
    if (iRet == 0) {

        lscriu_err("LSCRIU: Successful CloudLinux dump of PID: %d\n", s_pid);
    }
    else {
        s_restored = 1;
        LSAPI_reset_server_state();




        LSCRIU_Wink_Server_is_Ready();
        lscriu_err("LSCRIU: Successful CloudLinux restore of PID: %d, parent: %d.\n",
                   getpid(), getppid());
    }
    LSCRIU_Set_Initial_Start_Reqs(0);
}
