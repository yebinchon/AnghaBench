
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ctx; } ;
typedef TYPE_1__ OSSL_CMP_CTX_TEST_FIXTURE ;


 int OPENSSL_free (TYPE_1__*) ;
 int OSSL_CMP_CTX_free (int ) ;

__attribute__((used)) static void tear_down(OSSL_CMP_CTX_TEST_FIXTURE *fixture)
{
    if (fixture != ((void*)0))
        OSSL_CMP_CTX_free(fixture->ctx);
    OPENSSL_free(fixture);
}
