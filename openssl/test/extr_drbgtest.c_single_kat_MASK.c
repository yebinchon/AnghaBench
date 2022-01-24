#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  t ;
struct TYPE_7__ {int /*<<< orphan*/  kat2len_pr; int /*<<< orphan*/  kat2_pr; int /*<<< orphan*/  adinglen_pr; int /*<<< orphan*/  ading_pr; int /*<<< orphan*/  entropyglen_pr; int /*<<< orphan*/  entropyg_pr; int /*<<< orphan*/  katlen_pr; int /*<<< orphan*/  kat_pr; int /*<<< orphan*/  adinlen_pr; int /*<<< orphan*/  adin_pr; int /*<<< orphan*/  entropyprlen_pr; int /*<<< orphan*/  entropypr_pr; int /*<<< orphan*/  perslen_pr; int /*<<< orphan*/  pers_pr; int /*<<< orphan*/  noncelen_pr; int /*<<< orphan*/  nonce_pr; int /*<<< orphan*/  entropylen_pr; int /*<<< orphan*/  entropy_pr; int /*<<< orphan*/  flags; int /*<<< orphan*/  nid; int /*<<< orphan*/  kat2len; int /*<<< orphan*/  kat2; int /*<<< orphan*/  adin2len; int /*<<< orphan*/  adin2; int /*<<< orphan*/  adinreseedlen; int /*<<< orphan*/  adinreseed; int /*<<< orphan*/  entropyreseedlen; int /*<<< orphan*/  entropyreseed; int /*<<< orphan*/  exlen; int /*<<< orphan*/  expected; int /*<<< orphan*/  adinlen; int /*<<< orphan*/  adin; int /*<<< orphan*/  perslen; int /*<<< orphan*/  pers; int /*<<< orphan*/  noncelen; int /*<<< orphan*/  nonce; int /*<<< orphan*/  entropylen; int /*<<< orphan*/  entropy; } ;
struct TYPE_6__ {int /*<<< orphan*/  entropylen; int /*<<< orphan*/  entropy; scalar_t__ noncecnt; scalar_t__ entropycnt; int /*<<< orphan*/  noncelen; int /*<<< orphan*/  nonce; } ;
typedef  TYPE_1__ TEST_CTX ;
typedef  int /*<<< orphan*/  RAND_DRBG ;
typedef  TYPE_2__ DRBG_SELFTEST_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  app_data_index ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kat_entropy ; 
 int /*<<< orphan*/  kat_nonce ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(DRBG_SELFTEST_DATA *td)
{
    RAND_DRBG *drbg = NULL;
    TEST_CTX t;
    int failures = 0;
    unsigned char buff[1024];

    /*
     * Test without PR: Instantiate DRBG with test entropy, nonce and
     * personalisation string.
     */
    if (!FUNC9(drbg = FUNC3(td->nid, td->flags, NULL)))
        return 0;
    if (!FUNC10(FUNC6(drbg, kat_entropy, NULL,
                                           kat_nonce, NULL))
        || !FUNC10(FUNC11(drbg))) {
        failures++;
        goto err;
    }
    FUNC12(&t, 0, sizeof(t));
    t.entropy = td->entropy;
    t.entropylen = td->entropylen;
    t.nonce = td->nonce;
    t.noncelen = td->noncelen;
    FUNC7(drbg, app_data_index, &t);

    if (!FUNC10(FUNC2(drbg, td->pers, td->perslen))
            || !FUNC10(FUNC1(drbg, buff, td->exlen, 0,
                                             td->adin, td->adinlen))
            || !FUNC8(td->expected, td->exlen, buff, td->exlen))
        failures++;

    /* Reseed DRBG with test entropy and additional input */
    t.entropy = td->entropyreseed;
    t.entropylen = td->entropyreseedlen;
    if (!FUNC10(FUNC4(drbg, td->adinreseed, td->adinreseedlen, 0)
            || !FUNC10(FUNC1(drbg, buff, td->kat2len, 0,
                                             td->adin2, td->adin2len))
            || !FUNC8(td->kat2, td->kat2len, buff, td->kat2len)))
        failures++;
    FUNC13(drbg);

    /*
     * Now test with PR: Instantiate DRBG with test entropy, nonce and
     * personalisation string.
     */
    if (!FUNC10(FUNC5(drbg, td->nid, td->flags))
            || !FUNC10(FUNC6(drbg, kat_entropy, NULL,
                                                  kat_nonce, NULL)))
        failures++;
    FUNC7(drbg, app_data_index, &t);
    t.entropy = td->entropy_pr;
    t.entropylen = td->entropylen_pr;
    t.nonce = td->nonce_pr;
    t.noncelen = td->noncelen_pr;
    t.entropycnt = 0;
    t.noncecnt = 0;
    if (!FUNC10(FUNC2(drbg, td->pers_pr, td->perslen_pr)))
        failures++;

    /*
     * Now generate with PR: we need to supply entropy as this will
     * perform a reseed operation.
     */
    t.entropy = td->entropypr_pr;
    t.entropylen = td->entropyprlen_pr;
    if (!FUNC10(FUNC1(drbg, buff, td->katlen_pr, 1,
                                      td->adin_pr, td->adinlen_pr))
            || !FUNC8(td->kat_pr, td->katlen_pr, buff, td->katlen_pr))
        failures++;

    /*
     * Now generate again with PR: supply new entropy again.
     */
    t.entropy = td->entropyg_pr;
    t.entropylen = td->entropyglen_pr;

    if (!FUNC10(FUNC1(drbg, buff, td->kat2len_pr, 1,
                                      td->ading_pr, td->adinglen_pr))
                || !FUNC8(td->kat2_pr, td->kat2len_pr,
                                buff, td->kat2len_pr))
        failures++;

err:
    FUNC13(drbg);
    FUNC0(drbg);
    return failures == 0;
}