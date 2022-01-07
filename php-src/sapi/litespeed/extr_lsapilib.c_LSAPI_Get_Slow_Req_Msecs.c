
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int s_slow_req_msecs ;

int LSAPI_Get_Slow_Req_Msecs(void)
{
    return s_slow_req_msecs;
}
