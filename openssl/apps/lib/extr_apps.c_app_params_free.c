
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* data; int * key; } ;
typedef TYPE_1__ OSSL_PARAM ;


 int OPENSSL_free (TYPE_1__*) ;

void app_params_free(OSSL_PARAM *params)
{
    int i;

    if (params != ((void*)0)) {
        for (i = 0; params[i].key != ((void*)0); ++i)
            OPENSSL_free(params[i].data);
        OPENSSL_free(params);
    }
}
