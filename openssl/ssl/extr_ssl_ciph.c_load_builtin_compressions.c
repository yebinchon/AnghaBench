
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RUN_ONCE (int *,int ) ;
 int do_load_builtin_compressions ;
 int ssl_load_builtin_comp_once ;

__attribute__((used)) static int load_builtin_compressions(void)
{
    return RUN_ONCE(&ssl_load_builtin_comp_once, do_load_builtin_compressions);
}
