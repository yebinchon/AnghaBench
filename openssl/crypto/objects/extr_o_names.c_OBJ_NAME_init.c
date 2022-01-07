
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RUN_ONCE (int *,int ) ;
 int init ;
 int o_names_init ;

int OBJ_NAME_init(void)
{
    return RUN_ONCE(&init, o_names_init);
}
