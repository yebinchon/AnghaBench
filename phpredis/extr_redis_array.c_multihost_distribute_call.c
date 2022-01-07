
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
struct TYPE_5__ {int function_table; } ;
struct TYPE_4__ {int count; int * hosts; int * redis; } ;
typedef TYPE_1__ RedisArray ;


 int ZSTR_LEN (int ) ;
 int ZSTR_VAL (int ) ;
 int add_assoc_zval_ex (int *,int ,int ,int *) ;
 int array_init (int *) ;
 int ra_call_user_function (int *,int *,int *,int *,int,int *) ;
 TYPE_2__* redis_array_ce ;

__attribute__((used)) static void
multihost_distribute_call(RedisArray *ra, zval *return_value, zval *z_fun, int argc, zval *argv)
{
    zval z_tmp;
    int i;


    array_init(return_value);


    for (i = 0; i < ra->count; ++i) {

        ra_call_user_function(&redis_array_ce->function_table, &ra->redis[i], z_fun, &z_tmp, argc, argv);


        add_assoc_zval_ex(return_value, ZSTR_VAL(ra->hosts[i]), ZSTR_LEN(ra->hosts[i]), &z_tmp);
    }
}
