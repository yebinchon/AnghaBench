
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EV_POP ;
 unsigned long get_error_values (int ,int *,int *,char const**,int *,int *) ;

unsigned long ERR_get_error_func(const char **func)
{
    return get_error_values(EV_POP, ((void*)0), ((void*)0), func, ((void*)0), ((void*)0));
}
