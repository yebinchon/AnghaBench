
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int LSCRIU_Restored_Error (int,char*) ;
 int exit (int) ;
 int getppid () ;
 int time (int*) ;
 int usleep (int) ;

__attribute__((used)) static void LSCRIU_Wait_Dump_Finsh_Or_Restored(int pid_parent)
{


    time_t iTimeStart = 0;
    time_t iTimeNow;
    int iRestored = 0;
    do {
        usleep(1000);
        time(&iTimeNow);
        if (!iTimeStart) {
            iTimeStart = iTimeNow;
        }
        else if ((pid_parent != getppid()) ||
                    (iTimeNow - iTimeStart > 10)) {
            iRestored = 1;
        }
        else if (iTimeNow - iTimeStart > 5) {
            LSCRIU_Restored_Error(1, "Timed out waiting to be dumped");
            exit(1);
        }
    } while (!iRestored);
}
