#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  ENGINE ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bio_err ; 

__attribute__((used)) static int FUNC10(EVP_PKEY_CTX **pctx, const char *file, ENGINE *e)
{
    BIO *pbio;
    EVP_PKEY *pkey = NULL;
    EVP_PKEY_CTX *ctx = NULL;
    if (*pctx) {
        FUNC3(bio_err, "Parameters already set!\n");
        return 0;
    }

    pbio = FUNC1(file, "r");
    if (pbio == NULL) {
        FUNC2(bio_err, "Can't open parameter file %s\n", file);
        return 0;
    }

    pkey = FUNC9(pbio, NULL);
    FUNC0(pbio);

    if (pkey == NULL) {
        FUNC2(bio_err, "Error reading parameter file %s\n", file);
        return 0;
    }

    ctx = FUNC6(pkey, e);
    if (ctx == NULL)
        goto err;
    if (FUNC8(ctx) <= 0)
        goto err;
    FUNC7(pkey);
    *pctx = ctx;
    return 1;

 err:
    FUNC3(bio_err, "Error initializing context\n");
    FUNC4(bio_err);
    FUNC5(ctx);
    FUNC7(pkey);
    return 0;

}