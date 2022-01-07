
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int t ;
struct TYPE_7__ {int kat2len_pr; int kat2_pr; int adinglen_pr; int ading_pr; int entropyglen_pr; int entropyg_pr; int katlen_pr; int kat_pr; int adinlen_pr; int adin_pr; int entropyprlen_pr; int entropypr_pr; int perslen_pr; int pers_pr; int noncelen_pr; int nonce_pr; int entropylen_pr; int entropy_pr; int flags; int nid; int kat2len; int kat2; int adin2len; int adin2; int adinreseedlen; int adinreseed; int entropyreseedlen; int entropyreseed; int exlen; int expected; int adinlen; int adin; int perslen; int pers; int noncelen; int nonce; int entropylen; int entropy; } ;
struct TYPE_6__ {int entropylen; int entropy; scalar_t__ noncecnt; scalar_t__ entropycnt; int noncelen; int nonce; } ;
typedef TYPE_1__ TEST_CTX ;
typedef int RAND_DRBG ;
typedef TYPE_2__ DRBG_SELFTEST_DATA ;


 int RAND_DRBG_free (int *) ;
 int RAND_DRBG_generate (int *,unsigned char*,int ,int,int ,int ) ;
 int RAND_DRBG_instantiate (int *,int ,int ) ;
 int * RAND_DRBG_new (int ,int ,int *) ;
 scalar_t__ RAND_DRBG_reseed (int *,int ,int ,int ) ;
 int RAND_DRBG_set (int *,int ,int ) ;
 int RAND_DRBG_set_callbacks (int *,int ,int *,int ,int *) ;
 int RAND_DRBG_set_ex_data (int *,int ,TYPE_1__*) ;
 int TEST_mem_eq (int ,int ,unsigned char*,int ) ;
 int TEST_ptr (int *) ;
 int TEST_true (int) ;
 int app_data_index ;
 int disable_crngt (int *) ;
 int kat_entropy ;
 int kat_nonce ;
 int memset (TYPE_1__*,int ,int) ;
 int uninstantiate (int *) ;

__attribute__((used)) static int single_kat(DRBG_SELFTEST_DATA *td)
{
    RAND_DRBG *drbg = ((void*)0);
    TEST_CTX t;
    int failures = 0;
    unsigned char buff[1024];





    if (!TEST_ptr(drbg = RAND_DRBG_new(td->nid, td->flags, ((void*)0))))
        return 0;
    if (!TEST_true(RAND_DRBG_set_callbacks(drbg, kat_entropy, ((void*)0),
                                           kat_nonce, ((void*)0)))
        || !TEST_true(disable_crngt(drbg))) {
        failures++;
        goto err;
    }
    memset(&t, 0, sizeof(t));
    t.entropy = td->entropy;
    t.entropylen = td->entropylen;
    t.nonce = td->nonce;
    t.noncelen = td->noncelen;
    RAND_DRBG_set_ex_data(drbg, app_data_index, &t);

    if (!TEST_true(RAND_DRBG_instantiate(drbg, td->pers, td->perslen))
            || !TEST_true(RAND_DRBG_generate(drbg, buff, td->exlen, 0,
                                             td->adin, td->adinlen))
            || !TEST_mem_eq(td->expected, td->exlen, buff, td->exlen))
        failures++;


    t.entropy = td->entropyreseed;
    t.entropylen = td->entropyreseedlen;
    if (!TEST_true(RAND_DRBG_reseed(drbg, td->adinreseed, td->adinreseedlen, 0)
            || !TEST_true(RAND_DRBG_generate(drbg, buff, td->kat2len, 0,
                                             td->adin2, td->adin2len))
            || !TEST_mem_eq(td->kat2, td->kat2len, buff, td->kat2len)))
        failures++;
    uninstantiate(drbg);





    if (!TEST_true(RAND_DRBG_set(drbg, td->nid, td->flags))
            || !TEST_true(RAND_DRBG_set_callbacks(drbg, kat_entropy, ((void*)0),
                                                  kat_nonce, ((void*)0))))
        failures++;
    RAND_DRBG_set_ex_data(drbg, app_data_index, &t);
    t.entropy = td->entropy_pr;
    t.entropylen = td->entropylen_pr;
    t.nonce = td->nonce_pr;
    t.noncelen = td->noncelen_pr;
    t.entropycnt = 0;
    t.noncecnt = 0;
    if (!TEST_true(RAND_DRBG_instantiate(drbg, td->pers_pr, td->perslen_pr)))
        failures++;





    t.entropy = td->entropypr_pr;
    t.entropylen = td->entropyprlen_pr;
    if (!TEST_true(RAND_DRBG_generate(drbg, buff, td->katlen_pr, 1,
                                      td->adin_pr, td->adinlen_pr))
            || !TEST_mem_eq(td->kat_pr, td->katlen_pr, buff, td->katlen_pr))
        failures++;




    t.entropy = td->entropyg_pr;
    t.entropylen = td->entropyglen_pr;

    if (!TEST_true(RAND_DRBG_generate(drbg, buff, td->kat2len_pr, 1,
                                      td->ading_pr, td->adinglen_pr))
                || !TEST_mem_eq(td->kat2_pr, td->kat2len_pr,
                                buff, td->kat2len_pr))
        failures++;

err:
    uninstantiate(drbg);
    RAND_DRBG_free(drbg);
    return failures == 0;
}
