#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  t ;
struct drbg_kat_pr_false {int /*<<< orphan*/  retbytes; int /*<<< orphan*/  addin2; int /*<<< orphan*/  addin1; int /*<<< orphan*/  addinreseed; int /*<<< orphan*/  entropyinreseed; int /*<<< orphan*/  persstr; int /*<<< orphan*/  nonce; int /*<<< orphan*/  entropyin; } ;
struct drbg_kat {int flags; int /*<<< orphan*/  retbyteslen; int /*<<< orphan*/  addinlen; int /*<<< orphan*/  entropyinlen; int /*<<< orphan*/  persstrlen; int /*<<< orphan*/  noncelen; int /*<<< orphan*/  nid; scalar_t__ t; } ;
struct TYPE_4__ {int /*<<< orphan*/  entropylen; int /*<<< orphan*/  entropy; int /*<<< orphan*/  noncelen; int /*<<< orphan*/  nonce; } ;
typedef  TYPE_1__ TEST_CTX ;
typedef  int /*<<< orphan*/  RAND_DRBG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int RAND_DRBG_FLAG_CTR_NO_DF ; 
 unsigned int RAND_DRBG_FLAG_HMAC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int USE_DF ; 
 int USE_HMAC ; 
 int /*<<< orphan*/  app_data_index ; 
 int /*<<< orphan*/  kat_entropy ; 
 int /*<<< orphan*/  kat_nonce ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC14(const struct drbg_kat *td)
{
    struct drbg_kat_pr_false *data = (struct drbg_kat_pr_false *)td->t;
    RAND_DRBG *drbg = NULL;
    unsigned char *buff = NULL;
    unsigned int flags = 0;
    int failures = 0;
    TEST_CTX t;

    if ((td->flags & USE_DF) == 0)
        flags |= RAND_DRBG_FLAG_CTR_NO_DF;
    if ((td->flags & USE_HMAC) != 0)
        flags |= RAND_DRBG_FLAG_HMAC;

    if (!FUNC11(drbg = FUNC5(td->nid, flags, NULL)))
        return 0;

    if (!FUNC12(FUNC7(drbg, kat_entropy, NULL,
                                           kat_nonce, NULL))) {
        failures++;
        goto err;
    }
    FUNC13(&t, 0, sizeof(t));
    t.entropy = data->entropyin;
    t.entropylen = td->entropyinlen;
    t.nonce = data->nonce;
    t.noncelen = td->noncelen;
    FUNC8(drbg, app_data_index, &t);

    buff = FUNC1(td->retbyteslen);
    if (buff == NULL)
        goto err;

    if (!FUNC12(FUNC4(drbg, data->persstr, td->persstrlen)))
        failures++;

    t.entropy = data->entropyinreseed;
    t.entropylen = td->entropyinlen;

    if (!FUNC12(FUNC6(drbg, data->addinreseed, td->addinlen, 0))
        || !FUNC12(FUNC3(drbg, buff, td->retbyteslen, 0,
                                         data->addin1, td->addinlen))
        || !FUNC12(FUNC3(drbg, buff, td->retbyteslen, 0,
                                         data->addin2, td->addinlen))
        || !FUNC12(FUNC9(drbg))
        || !FUNC10(data->retbytes, td->retbyteslen, buff,
                        td->retbyteslen))
        failures++;

err:
    FUNC0(buff);
    FUNC9(drbg);
    FUNC2(drbg);
    return failures == 0;
}