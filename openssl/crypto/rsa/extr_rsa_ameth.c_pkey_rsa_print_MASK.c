#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_3__* rsa; } ;
struct TYPE_11__ {TYPE_1__ pkey; } ;
struct TYPE_10__ {int /*<<< orphan*/  pss; int /*<<< orphan*/  prime_infos; int /*<<< orphan*/ * iqmp; int /*<<< orphan*/ * dmq1; int /*<<< orphan*/ * dmp1; int /*<<< orphan*/ * q; int /*<<< orphan*/ * p; int /*<<< orphan*/ * d; int /*<<< orphan*/ * e; int /*<<< orphan*/ * n; } ;
struct TYPE_9__ {int /*<<< orphan*/ * t; int /*<<< orphan*/ * d; int /*<<< orphan*/ * r; } ;
typedef  TYPE_2__ RSA_PRIME_INFO ;
typedef  TYPE_3__ RSA ;
typedef  TYPE_4__ EVP_PKEY ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_4__ const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(BIO *bp, const EVP_PKEY *pkey, int off, int priv)
{
    const RSA *x = pkey->pkey.rsa;
    char *str;
    const char *s;
    int ret = 0, mod_len = 0, ex_primes;

    if (x->n != NULL)
        mod_len = FUNC3(x->n);
    ex_primes = FUNC6(x->prime_infos);

    if (!FUNC1(bp, off, 128))
        goto err;

    if (FUNC2(bp, "%s ", FUNC4(pkey) ?  "RSA-PSS" : "RSA") <= 0)
        goto err;

    if (priv && x->d) {
        if (FUNC2(bp, "Private-Key: (%d bit, %d primes)\n",
                       mod_len, ex_primes <= 0 ? 2 : ex_primes + 2) <= 0)
            goto err;
        str = "modulus:";
        s = "publicExponent:";
    } else {
        if (FUNC2(bp, "Public-Key: (%d bit)\n", mod_len) <= 0)
            goto err;
        str = "Modulus:";
        s = "Exponent:";
    }
    if (!FUNC0(bp, str, x->n, NULL, off))
        goto err;
    if (!FUNC0(bp, s, x->e, NULL, off))
        goto err;
    if (priv) {
        int i;

        if (!FUNC0(bp, "privateExponent:", x->d, NULL, off))
            goto err;
        if (!FUNC0(bp, "prime1:", x->p, NULL, off))
            goto err;
        if (!FUNC0(bp, "prime2:", x->q, NULL, off))
            goto err;
        if (!FUNC0(bp, "exponent1:", x->dmp1, NULL, off))
            goto err;
        if (!FUNC0(bp, "exponent2:", x->dmq1, NULL, off))
            goto err;
        if (!FUNC0(bp, "coefficient:", x->iqmp, NULL, off))
            goto err;
        for (i = 0; i < FUNC6(x->prime_infos); i++) {
            /* print multi-prime info */
            BIGNUM *bn = NULL;
            RSA_PRIME_INFO *pinfo;
            int j;

            pinfo = FUNC7(x->prime_infos, i);
            for (j = 0; j < 3; j++) {
                if (!FUNC1(bp, off, 128))
                    goto err;
                switch (j) {
                case 0:
                    if (FUNC2(bp, "prime%d:", i + 3) <= 0)
                        goto err;
                    bn = pinfo->r;
                    break;
                case 1:
                    if (FUNC2(bp, "exponent%d:", i + 3) <= 0)
                        goto err;
                    bn = pinfo->d;
                    break;
                case 2:
                    if (FUNC2(bp, "coefficient%d:", i + 3) <= 0)
                        goto err;
                    bn = pinfo->t;
                    break;
                default:
                    break;
                }
                if (!FUNC0(bp, "", bn, NULL, off))
                    goto err;
            }
        }
    }
    if (FUNC4(pkey) && !FUNC5(bp, 1, x->pss, off))
        goto err;
    ret = 1;
 err:
    return ret;
}