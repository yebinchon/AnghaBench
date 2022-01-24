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
struct drbg_kat_pr_true {int /*<<< orphan*/  retbytes; int /*<<< orphan*/  addin2; int /*<<< orphan*/  entropyinpr2; int /*<<< orphan*/  addin1; int /*<<< orphan*/  entropyinpr1; int /*<<< orphan*/  persstr; int /*<<< orphan*/  entropyin; int /*<<< orphan*/  nonce; } ;
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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int USE_DF ; 
 int USE_HMAC ; 
 int /*<<< orphan*/  app_data_index ; 
 int /*<<< orphan*/  kat_entropy ; 
 int /*<<< orphan*/  kat_nonce ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC13(const struct drbg_kat *td)
{
    struct drbg_kat_pr_true *data = (struct drbg_kat_pr_true *)td->t;
    RAND_DRBG *drbg = NULL;
    unsigned char *buff = NULL;
    unsigned int flags = 0;
    int failures = 0;
    TEST_CTX t;

    if ((td->flags & USE_DF) == 0)
        flags |= RAND_DRBG_FLAG_CTR_NO_DF;
    if ((td->flags & USE_HMAC) != 0)
        flags |= RAND_DRBG_FLAG_HMAC;

    if (!FUNC10(drbg = FUNC5(td->nid, flags, NULL)))
        return 0;

    if (!FUNC11(FUNC6(drbg, kat_entropy, NULL,
                                           kat_nonce, NULL))) {
        failures++;
        goto err;
    }
    FUNC12(&t, 0, sizeof(t));
    t.nonce = data->nonce;
    t.noncelen = td->noncelen;
    t.entropy = data->entropyin;
    t.entropylen = td->entropyinlen;
    FUNC7(drbg, app_data_index, &t);

    buff = FUNC1(td->retbyteslen);
    if (buff == NULL)
        goto err;

    if (!FUNC11(FUNC4(drbg, data->persstr, td->persstrlen)))
        failures++;

    t.entropy = data->entropyinpr1;
    t.entropylen = td->entropyinlen;

    if (!FUNC11(FUNC3(drbg, buff, td->retbyteslen, 1,
                                      data->addin1, td->addinlen)))
        failures++;

    t.entropy = data->entropyinpr2;
    t.entropylen = td->entropyinlen;

    if (!FUNC11(FUNC3(drbg, buff, td->retbyteslen, 1,
                                      data->addin2, td->addinlen))
        || !FUNC11(FUNC8(drbg))
        || !FUNC9(data->retbytes, td->retbyteslen, buff,
                        td->retbyteslen))
        failures++;

err:
    FUNC0(buff);
    FUNC8(drbg);
    FUNC2(drbg);
    return failures == 0;
}