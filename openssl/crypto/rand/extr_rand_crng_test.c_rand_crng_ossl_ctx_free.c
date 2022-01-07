
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int crngt_pool; } ;
typedef TYPE_1__ CRNG_TEST_GLOBAL ;


 int OPENSSL_free (TYPE_1__*) ;
 int rand_pool_free (int ) ;

__attribute__((used)) static void rand_crng_ossl_ctx_free(void *vcrngt_glob)
{
    CRNG_TEST_GLOBAL *crngt_glob = vcrngt_glob;

    rand_pool_free(crngt_glob->crngt_pool);
    OPENSSL_free(crngt_glob);
}
