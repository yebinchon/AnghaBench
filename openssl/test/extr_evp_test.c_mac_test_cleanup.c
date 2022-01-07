
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* data; } ;
struct TYPE_4__ {int output; int input; int salt; int custom; int iv; int key; int alg; int controls; int mac_name; int mac; } ;
typedef TYPE_1__ MAC_DATA ;
typedef TYPE_2__ EVP_TEST ;


 int EVP_MAC_free (int ) ;
 int OPENSSL_free (int ) ;
 int openssl_free ;
 int sk_OPENSSL_STRING_pop_free (int ,int ) ;

__attribute__((used)) static void mac_test_cleanup(EVP_TEST *t)
{
    MAC_DATA *mdat = t->data;

    EVP_MAC_free(mdat->mac);
    OPENSSL_free(mdat->mac_name);
    sk_OPENSSL_STRING_pop_free(mdat->controls, openssl_free);
    OPENSSL_free(mdat->alg);
    OPENSSL_free(mdat->key);
    OPENSSL_free(mdat->iv);
    OPENSSL_free(mdat->custom);
    OPENSSL_free(mdat->salt);
    OPENSSL_free(mdat->input);
    OPENSSL_free(mdat->output);
}
