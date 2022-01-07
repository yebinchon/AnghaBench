
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ERR_STATE ;


 int * err_get_state_int () ;

ERR_STATE *ERR_get_state(void)
{
    return err_get_state_int();
}
