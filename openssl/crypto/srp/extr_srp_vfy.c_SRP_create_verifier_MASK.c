#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp2 ;
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_3__ {char* id; int /*<<< orphan*/ * g; int /*<<< orphan*/ * N; } ;
typedef  TYPE_1__ SRP_gN ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (unsigned char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int MAX_LEN ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int) ; 
 scalar_t__ FUNC8 (unsigned char*,int) ; 
 int SRP_RANDOM_SALT_LEN ; 
 int /*<<< orphan*/  FUNC9 (char const*,char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 TYPE_1__* FUNC10 (char const*) ; 
 int FUNC11 (unsigned char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC12 (char*,unsigned char*,int) ; 

char *FUNC13(const char *user, const char *pass, char **salt,
                          char **verifier, const char *N, const char *g)
{
    int len;
    char *result = NULL, *vf = NULL;
    const BIGNUM *N_bn = NULL, *g_bn = NULL;
    BIGNUM *N_bn_alloc = NULL, *g_bn_alloc = NULL, *s = NULL, *v = NULL;
    unsigned char tmp[MAX_LEN];
    unsigned char tmp2[MAX_LEN];
    char *defgNid = NULL;
    int vfsize = 0;

    if ((user == NULL) ||
        (pass == NULL) || (salt == NULL) || (verifier == NULL))
        goto err;

    if (N) {
        if ((len = FUNC11(tmp, sizeof(tmp), N)) <= 0)
            goto err;
        N_bn_alloc = FUNC0(tmp, len, NULL);
        if (N_bn_alloc == NULL)
            goto err;
        N_bn = N_bn_alloc;
        if ((len = FUNC11(tmp, sizeof(tmp) ,g)) <= 0)
            goto err;
        g_bn_alloc = FUNC0(tmp, len, NULL);
        if (g_bn_alloc == NULL)
            goto err;
        g_bn = g_bn_alloc;
        defgNid = "*";
    } else {
        SRP_gN *gN = FUNC10(g);
        if (gN == NULL)
            goto err;
        N_bn = gN->N;
        g_bn = gN->g;
        defgNid = gN->id;
    }

    if (*salt == NULL) {
        if (FUNC8(tmp2, SRP_RANDOM_SALT_LEN) <= 0)
            goto err;

        s = FUNC0(tmp2, SRP_RANDOM_SALT_LEN, NULL);
    } else {
        if ((len = FUNC11(tmp2, sizeof(tmp2), *salt)) <= 0)
            goto err;
        s = FUNC0(tmp2, len, NULL);
    }
    if (s == NULL)
        goto err;

    if (!FUNC9(user, pass, &s, &v, N_bn, g_bn))
        goto err;

    if (FUNC1(v, tmp) < 0)
        goto err;
    vfsize = FUNC4(v) * 2;
    if (((vf = FUNC7(vfsize)) == NULL))
        goto err;
    if (!FUNC12(vf, tmp, FUNC4(v)))
        goto err;

    if (*salt == NULL) {
        char *tmp_salt;

        if ((tmp_salt = FUNC7(SRP_RANDOM_SALT_LEN * 2)) == NULL) {
            goto err;
        }
        if (!FUNC12(tmp_salt, tmp2, SRP_RANDOM_SALT_LEN)) {
            FUNC6(tmp_salt);
            goto err;
        }
        *salt = tmp_salt;
    }

    *verifier = vf;
    vf = NULL;
    result = defgNid;

 err:
    FUNC3(N_bn_alloc);
    FUNC3(g_bn_alloc);
    FUNC5(vf, vfsize);
    FUNC2(s);
    FUNC2(v);
    return result;
}