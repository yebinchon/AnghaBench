
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int s_slow_req_msecs ;

void LSAPI_Set_Slow_Req_Msecs( int msecs )
{
    s_slow_req_msecs = msecs;
}
