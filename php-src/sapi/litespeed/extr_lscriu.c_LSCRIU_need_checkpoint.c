
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CRIU_GCOUNTER_SHM ;
 int LSCRIU_Get_Global_Counter () ;
 scalar_t__ LSCRIU_Get_Global_Counter_Type () ;
 scalar_t__ s_initial_start_reqs ;
 scalar_t__ s_requests_count ;

__attribute__((used)) static int LSCRIU_need_checkpoint(void)
{
    if (!s_initial_start_reqs) {
        return 0;
    }

    if (LSCRIU_Get_Global_Counter_Type() == CRIU_GCOUNTER_SHM
        && s_requests_count <= s_initial_start_reqs) {
        LSCRIU_Get_Global_Counter();
    }
    if (s_initial_start_reqs > 0
        && s_requests_count >= s_initial_start_reqs) {
        return 1;
    }

    return 0;
}
