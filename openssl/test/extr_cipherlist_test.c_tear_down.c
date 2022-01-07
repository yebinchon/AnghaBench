
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * client; int * server; } ;
typedef TYPE_1__ CIPHERLIST_TEST_FIXTURE ;


 int OPENSSL_free (TYPE_1__*) ;
 int SSL_CTX_free (int *) ;

__attribute__((used)) static void tear_down(CIPHERLIST_TEST_FIXTURE *fixture)
{
    if (fixture != ((void*)0)) {
        SSL_CTX_free(fixture->server);
        SSL_CTX_free(fixture->client);
        fixture->server = fixture->client = ((void*)0);
        OPENSSL_free(fixture);
    }
}
