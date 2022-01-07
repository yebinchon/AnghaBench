
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CRIU_GCOUNTER_SHM ;
 int LSAPI_Inc_Req_Processed (int) ;
 scalar_t__ LSCRIU_Get_Global_Counter_Type () ;
 int s_initial_start_reqs ;
 int s_requests_count ;

__attribute__((used)) static void LSCRIU_Increase_Global_Counter(void)
{
    if (LSCRIU_Get_Global_Counter_Type() != CRIU_GCOUNTER_SHM
        || !s_initial_start_reqs) {
        return;
    }

    s_requests_count = LSAPI_Inc_Req_Processed(1);
}
