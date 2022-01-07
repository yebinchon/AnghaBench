
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CRIU_GCOUNTER_SHM ;
 scalar_t__ LSCRIU_Get_Global_Counter_Type () ;
 int s_initial_start_reqs ;

__attribute__((used)) static int LSCRIU_Init_Global_Counter(int value)
{
    if (LSCRIU_Get_Global_Counter_Type() != CRIU_GCOUNTER_SHM
        || !s_initial_start_reqs) {
        return 0;
    }

    return 0;
}
