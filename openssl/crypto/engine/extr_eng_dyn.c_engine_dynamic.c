
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 int ENGINE_FLAGS_BY_ID_COPY ;
 int ENGINE_free (int *) ;
 int * ENGINE_new () ;
 int ENGINE_set_cmd_defns (int *,int ) ;
 int ENGINE_set_ctrl_function (int *,int ) ;
 int ENGINE_set_finish_function (int *,int ) ;
 int ENGINE_set_flags (int *,int ) ;
 int ENGINE_set_id (int *,int ) ;
 int ENGINE_set_init_function (int *,int ) ;
 int ENGINE_set_name (int *,int ) ;
 int dynamic_cmd_defns ;
 int dynamic_ctrl ;
 int dynamic_finish ;
 int dynamic_init ;
 int engine_dynamic_id ;
 int engine_dynamic_name ;

__attribute__((used)) static ENGINE *engine_dynamic(void)
{
    ENGINE *ret = ENGINE_new();
    if (ret == ((void*)0))
        return ((void*)0);
    if (!ENGINE_set_id(ret, engine_dynamic_id) ||
        !ENGINE_set_name(ret, engine_dynamic_name) ||
        !ENGINE_set_init_function(ret, dynamic_init) ||
        !ENGINE_set_finish_function(ret, dynamic_finish) ||
        !ENGINE_set_ctrl_function(ret, dynamic_ctrl) ||
        !ENGINE_set_flags(ret, ENGINE_FLAGS_BY_ID_COPY) ||
        !ENGINE_set_cmd_defns(ret, dynamic_cmd_defns)) {
        ENGINE_free(ret);
        return ((void*)0);
    }
    return ret;
}
