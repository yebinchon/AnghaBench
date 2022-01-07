
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 int ENGINE_FLAGS_NO_REGISTER_ALL ;
 int ENGINE_set_RAND (int *,int *) ;
 int ENGINE_set_flags (int *,int ) ;
 int ENGINE_set_id (int *,int ) ;
 int ENGINE_set_init_function (int *,int ) ;
 int ENGINE_set_name (int *,int ) ;
 int engine_e_rdrand_id ;
 int engine_e_rdrand_name ;
 int rdrand_init ;
 int rdrand_meth ;

__attribute__((used)) static int bind_helper(ENGINE *e)
{
    if (!ENGINE_set_id(e, engine_e_rdrand_id) ||
        !ENGINE_set_name(e, engine_e_rdrand_name) ||
        !ENGINE_set_flags(e, ENGINE_FLAGS_NO_REGISTER_ALL) ||
        !ENGINE_set_init_function(e, rdrand_init) ||
        !ENGINE_set_RAND(e, &rdrand_meth))
        return 0;

    return 1;
}
