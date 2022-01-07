
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CRIU_GCOUNTER_SHM ;
 int LSAPI_Get_ppid () ;
 scalar_t__ LSCRIU_Get_Global_Counter_Type () ;
 int LSCRIU_Increase_Global_Counter () ;
 int SIGUSR2 ;
 int getpid () ;
 int kill (int ,int ) ;
 int lscriu_dbg (char*,int ,...) ;
 scalar_t__ s_initial_start_reqs ;
 scalar_t__ s_requests_count ;

void LSCRIU_inc_req_procssed()
{
    if (!LSCRIU_Get_Global_Counter_Type()) {
        ++s_requests_count;
    }

    lscriu_dbg("LSCRIU (%d): s_requests_count %d counter %d\n", getpid(),
               s_requests_count, s_initial_start_reqs);

    if (s_initial_start_reqs > 0 && s_requests_count <= s_initial_start_reqs) {
        if (LSCRIU_Get_Global_Counter_Type() == CRIU_GCOUNTER_SHM) {
            LSCRIU_Increase_Global_Counter();
            if (s_requests_count >= s_initial_start_reqs) {



                lscriu_dbg("LSCRIU (%d): Time to dump main process with semaphore\n",
                           getpid());
            }
        } else {
            kill(LSAPI_Get_ppid(), SIGUSR2);
            lscriu_dbg("LSCRIU (%d): Send kill to main process with signals\n",
                       getpid());
        }
    }
}
