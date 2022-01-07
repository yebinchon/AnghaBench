
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LSAPI_Inc_Req_Processed (int ) ;
 int s_initial_start_reqs ;
 int s_requests_count ;

__attribute__((used)) static void LSCRIU_Get_Global_Counter(void)
{
    if (!s_initial_start_reqs) {
        return;
    }
    s_requests_count = LSAPI_Inc_Req_Processed(0);

}
