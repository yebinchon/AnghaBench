
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int function_id; } ;
typedef int OSSL_PROVIDER ;
typedef TYPE_1__ OSSL_DISPATCH ;




 int OSSL_get_core_get_params (TYPE_1__ const*) ;
 int OSSL_get_core_gettable_params (TYPE_1__ const*) ;
 int c_get_params ;
 int c_gettable_params ;
 TYPE_1__* p_test_table ;

int OSSL_provider_init(const OSSL_PROVIDER *provider,
                       const OSSL_DISPATCH *in,
                       const OSSL_DISPATCH **out,
                       void **provctx)
{
    for (; in->function_id != 0; in++) {
        switch (in->function_id) {
        case 129:
            c_gettable_params = OSSL_get_core_gettable_params(in);
            break;
        case 128:
            c_get_params = OSSL_get_core_get_params(in);
            break;
        default:

            break;
        }
    }


    *provctx = (void *)provider;

    *out = p_test_table;
    return 1;
}
