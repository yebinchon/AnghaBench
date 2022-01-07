
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLOBAL_TEVENT_REGISTER ;


 int RUN_ONCE (int *,int ) ;
 int create_global_tevent_register ;
 int * glob_tevent_reg ;
 int tevent_register_runonce ;

__attribute__((used)) static GLOBAL_TEVENT_REGISTER *get_global_tevent_register(void)
{
    if (!RUN_ONCE(&tevent_register_runonce, create_global_tevent_register))
        return ((void*)0);
    return glob_tevent_reg;
}
