
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* s_secret ;
 int s_uid ;

int LSAPI_is_suEXEC_Daemon(void)
{
    if (( !s_uid )&&( s_secret[0] ))
        return 1;
    else
        return 0;
}
