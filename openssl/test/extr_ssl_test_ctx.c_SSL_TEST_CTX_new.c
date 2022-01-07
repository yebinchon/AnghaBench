
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int max_fragment_size; int app_data_size; } ;
typedef TYPE_1__ SSL_TEST_CTX ;


 TYPE_1__* OPENSSL_zalloc (int) ;
 int default_app_data_size ;
 int default_max_fragment_size ;

SSL_TEST_CTX *SSL_TEST_CTX_new(void)
{
    SSL_TEST_CTX *ret;


    if ((ret = OPENSSL_zalloc(sizeof(*ret))) != ((void*)0)) {
        ret->app_data_size = default_app_data_size;
        ret->max_fragment_size = default_max_fragment_size;
    }
    return ret;
}
