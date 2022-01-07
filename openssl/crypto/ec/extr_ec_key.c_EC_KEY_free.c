
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {TYPE_2__* meth; } ;
struct TYPE_12__ {int priv_key; int pub_key; TYPE_8__* group; int lock; int ex_data; int engine; TYPE_1__* meth; int references; } ;
struct TYPE_11__ {int (* keyfinish ) (TYPE_3__*) ;} ;
struct TYPE_10__ {int (* finish ) (TYPE_3__*) ;} ;
typedef TYPE_3__ EC_KEY ;


 int BN_clear_free (int ) ;
 int CRYPTO_DOWN_REF (int *,int*,int ) ;
 int CRYPTO_EX_INDEX_EC_KEY ;
 int CRYPTO_THREAD_lock_free (int ) ;
 int CRYPTO_free_ex_data (int ,TYPE_3__*,int *) ;
 int EC_GROUP_free (TYPE_8__*) ;
 int EC_POINT_free (int ) ;
 int ENGINE_finish (int ) ;
 int OPENSSL_clear_free (void*,int) ;
 int REF_ASSERT_ISNT (int) ;
 int REF_PRINT_COUNT (char*,TYPE_3__*) ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_3__*) ;

void EC_KEY_free(EC_KEY *r)
{
    int i;

    if (r == ((void*)0))
        return;

    CRYPTO_DOWN_REF(&r->references, &i, r->lock);
    REF_PRINT_COUNT("EC_KEY", r);
    if (i > 0)
        return;
    REF_ASSERT_ISNT(i < 0);

    if (r->meth != ((void*)0) && r->meth->finish != ((void*)0))
        r->meth->finish(r);


    ENGINE_finish(r->engine);


    if (r->group && r->group->meth->keyfinish)
        r->group->meth->keyfinish(r);


    CRYPTO_free_ex_data(CRYPTO_EX_INDEX_EC_KEY, r, &r->ex_data);

    CRYPTO_THREAD_lock_free(r->lock);
    EC_GROUP_free(r->group);
    EC_POINT_free(r->pub_key);
    BN_clear_free(r->priv_key);

    OPENSSL_clear_free((void *)r, sizeof(EC_KEY));
}
