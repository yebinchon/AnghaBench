
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ctx2; int ctx1; int prov2; int prov1; } ;
typedef TYPE_1__ FIXTURE ;


 int OPENSSL_CTX_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;
 int OSSL_PROVIDER_unload (int ) ;

__attribute__((used)) static void tear_down(FIXTURE *fixture)
{
    if (fixture != ((void*)0)) {
        OSSL_PROVIDER_unload(fixture->prov1);
        OSSL_PROVIDER_unload(fixture->prov2);
        OPENSSL_CTX_free(fixture->ctx1);
        OPENSSL_CTX_free(fixture->ctx2);
        OPENSSL_free(fixture);
    }
}
