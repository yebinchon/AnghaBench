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
typedef  int /*<<< orphan*/  rand_tmp ;
struct TYPE_4__ {int /*<<< orphan*/ * N; int /*<<< orphan*/ * g; } ;
typedef  TYPE_1__ SRP_gN ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (unsigned char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int RANDOM_SIZE ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char const*,char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(const char *username, const char *client_pass,
                   const char *server_pass)
{
    int ret = 0;
    BIGNUM *s = NULL;
    BIGNUM *v = NULL;
    BIGNUM *a = NULL;
    BIGNUM *b = NULL;
    BIGNUM *u = NULL;
    BIGNUM *x = NULL;
    BIGNUM *Apub = NULL;
    BIGNUM *Bpub = NULL;
    BIGNUM *Kclient = NULL;
    BIGNUM *Kserver = NULL;
    unsigned char rand_tmp[RANDOM_SIZE];
    /* use builtin 1024-bit params */
    const SRP_gN *GN;

    if (!FUNC16(GN = FUNC13("1024")))
        return 0;

    /* Set up server's password entry */
    if (!FUNC17(FUNC12(username, server_pass,
                                          &s, &v, GN->N, GN->g)))
        goto end;

    FUNC18("N", GN->N);
    FUNC18("g", GN->g);
    FUNC18("Salt", s);
    FUNC18("Verifier", v);

    /* Server random */
    FUNC3(rand_tmp, sizeof(rand_tmp));
    b = FUNC0(rand_tmp, sizeof(rand_tmp), NULL);
    if (!FUNC15(b))
        goto end;
    FUNC18("b", b);

    /* Server's first message */
    Bpub = FUNC5(b, GN->N, GN->g, v);
    FUNC18("B", Bpub);

    if (!FUNC17(FUNC11(Bpub, GN->N)))
        goto end;

    /* Client random */
    FUNC3(rand_tmp, sizeof(rand_tmp));
    a = FUNC0(rand_tmp, sizeof(rand_tmp), NULL);
    if (!FUNC15(a))
        goto end;
    FUNC18("a", a);

    /* Client's response */
    Apub = FUNC4(a, GN->N, GN->g);
    FUNC18("A", Apub);

    if (!FUNC17(FUNC10(Apub, GN->N)))
        goto end;

    /* Both sides calculate u */
    u = FUNC8(Apub, Bpub, GN->N);

    /* Client's key */
    x = FUNC9(s, username, client_pass);
    Kclient = FUNC6(GN->N, Bpub, GN->g, x, a, u);
    FUNC18("Client's key", Kclient);

    /* Server's key */
    Kserver = FUNC7(Apub, v, u, b, GN->N);
    FUNC18("Server's key", Kserver);

    if (!FUNC14(Kclient, Kserver))
        goto end;

    ret = 1;

end:
    FUNC1(Kclient);
    FUNC1(Kserver);
    FUNC1(x);
    FUNC2(u);
    FUNC2(Apub);
    FUNC1(a);
    FUNC2(Bpub);
    FUNC1(b);
    FUNC2(s);
    FUNC1(v);

    return ret;
}