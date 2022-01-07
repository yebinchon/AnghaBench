
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ data_type; int data_size; int data; int * key; } ;
typedef TYPE_1__ OSSL_PARAM ;


 int OPENSSL_free (TYPE_1__*) ;
 int OPENSSL_secure_clear_free (int ,int ) ;
 scalar_t__ OSSL_PARAM_ALLOCATED_END ;

void ossl_param_bld_free(OSSL_PARAM *params)
{
    if (params != ((void*)0)) {
        OSSL_PARAM *p;

        for (p = params; p->key != ((void*)0); p++)
            ;
        if (p->data_type == OSSL_PARAM_ALLOCATED_END)
            OPENSSL_secure_clear_free(p->data, p->data_size);
        OPENSSL_free(params);
    }
}
