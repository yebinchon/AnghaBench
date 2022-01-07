
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nid; } ;
struct TYPE_4__ {int * driver_name; } ;


 int OPENSSL_free (int *) ;
 size_t OSSL_NELEM (TYPE_2__*) ;
 TYPE_2__* cipher_data ;
 TYPE_1__* cipher_driver_info ;
 int destroy_cipher_method (int ) ;

__attribute__((used)) static void destroy_all_cipher_methods(void)
{
    size_t i;

    for (i = 0; i < OSSL_NELEM(cipher_data); i++) {
        destroy_cipher_method(cipher_data[i].nid);
        OPENSSL_free(cipher_driver_info[i].driver_name);
        cipher_driver_info[i].driver_name = ((void*)0);
    }
}
