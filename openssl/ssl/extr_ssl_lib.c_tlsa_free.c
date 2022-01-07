
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int spki; struct TYPE_4__* data; } ;
typedef TYPE_1__ danetls_record ;


 int EVP_PKEY_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;

__attribute__((used)) static void tlsa_free(danetls_record *t)
{
    if (t == ((void*)0))
        return;
    OPENSSL_free(t->data);
    EVP_PKEY_free(t->spki);
    OPENSSL_free(t);
}
