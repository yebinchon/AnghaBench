
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int s_max_reqs ;

void LSAPI_Set_Max_Reqs( int reqs )
{ s_max_reqs = reqs - 1; }
