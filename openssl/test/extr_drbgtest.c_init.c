
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int noncelen; int nonce; int entropylen; int entropy; int flags; int nid; } ;
struct TYPE_6__ {scalar_t__ noncecnt; scalar_t__ entropycnt; int noncelen; int nonce; int entropylen; int entropy; } ;
typedef TYPE_1__ TEST_CTX ;
typedef int RAND_DRBG ;
typedef TYPE_2__ DRBG_SELFTEST_DATA ;


 int RAND_DRBG_set (int *,int ,int ) ;
 int RAND_DRBG_set_callbacks (int *,int ,int *,int ,int *) ;
 int RAND_DRBG_set_ex_data (int *,int ,TYPE_1__*) ;
 int TEST_true (int ) ;
 int app_data_index ;
 int kat_entropy ;
 int kat_nonce ;

__attribute__((used)) static int init(RAND_DRBG *drbg, DRBG_SELFTEST_DATA *td, TEST_CTX *t)
{
    if (!TEST_true(RAND_DRBG_set(drbg, td->nid, td->flags))
            || !TEST_true(RAND_DRBG_set_callbacks(drbg, kat_entropy, ((void*)0),
                                                  kat_nonce, ((void*)0))))
        return 0;
    RAND_DRBG_set_ex_data(drbg, app_data_index, t);
    t->entropy = td->entropy;
    t->entropylen = td->entropylen;
    t->nonce = td->nonce;
    t->noncelen = td->noncelen;
    t->entropycnt = 0;
    t->noncecnt = 0;
    return 1;
}
