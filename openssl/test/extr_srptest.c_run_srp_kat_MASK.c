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
struct TYPE_4__ {int /*<<< orphan*/  N; int /*<<< orphan*/  g; } ;
typedef  TYPE_1__ SRP_gN ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC18(void)
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
    /* use builtin 1024-bit params */
    const SRP_gN *GN;

    if (!FUNC15(GN = FUNC12("1024")))
        goto err;
    FUNC2(&s, "BEB25379D1A8581EB5A727673A2441EE");
    /* Set up server's password entry */
    if (!FUNC16(FUNC11("alice", "password123", &s, &v, GN->N,
                                          GN->g)))
        goto err;

    FUNC13("checking v");
    if (!FUNC16(FUNC17("v", v,
                 "7E273DE8696FFC4F4E337D05B4B375BEB0DDE1569E8FA00A9886D812"
                 "9BADA1F1822223CA1A605B530E379BA4729FDC59F105B4787E5186F5"
                 "C671085A1447B52A48CF1970B4FB6F8400BBF4CEBFBB168152E08AB5"
                 "EA53D15C1AFF87B2B9DA6E04E058AD51CC72BFC9033B564E26480D78"
                 "E955A5E29E7AB245DB2BE315E2099AFB")))
        goto err;
    FUNC14("    okay");

    /* Server random */
    FUNC2(&b, "E487CB59D31AC550471E81F00F6928E01DDA08E974A004F49E61F5D1"
                  "05284D20");

    /* Server's first message */
    Bpub = FUNC4(b, GN->N, GN->g, v);
    if (!FUNC16(FUNC10(Bpub, GN->N)))
        goto err;

    FUNC13("checking B");
    if (!FUNC16(FUNC17("B", Bpub,
                  "BD0C61512C692C0CB6D041FA01BB152D4916A1E77AF46AE105393011"
                  "BAF38964DC46A0670DD125B95A981652236F99D9B681CBF87837EC99"
                  "6C6DA04453728610D0C6DDB58B318885D7D82C7F8DEB75CE7BD4FBAA"
                  "37089E6F9C6059F388838E7A00030B331EB76840910440B1B27AAEAE"
                  "EB4012B7D7665238A8E3FB004B117B58")))
        goto err;
    FUNC14("    okay");

    /* Client random */
    FUNC2(&a, "60975527035CF2AD1989806F0407210BC81EDC04E2762A56AFD529DD"
                  "DA2D4393");

    /* Client's response */
    Apub = FUNC3(a, GN->N, GN->g);
    if (!FUNC16(FUNC9(Apub, GN->N)))
        goto err;

    FUNC13("checking A");
    if (!FUNC16(FUNC17("A", Apub,
                  "61D5E490F6F1B79547B0704C436F523DD0E560F0C64115BB72557EC4"
                  "4352E8903211C04692272D8B2D1A5358A2CF1B6E0BFCF99F921530EC"
                  "8E39356179EAE45E42BA92AEACED825171E1E8B9AF6D9C03E1327F44"
                  "BE087EF06530E69F66615261EEF54073CA11CF5858F0EDFDFE15EFEA"
                  "B349EF5D76988A3672FAC47B0769447B")))
        goto err;
    FUNC14("    okay");

    /* Both sides calculate u */
    u = FUNC7(Apub, Bpub, GN->N);

    if (!FUNC16(FUNC17("u", u,
                    "CE38B9593487DA98554ED47D70A7AE5F462EF019")))
        goto err;

    /* Client's key */
    x = FUNC8(s, "alice", "password123");
    Kclient = FUNC5(GN->N, Bpub, GN->g, x, a, u);
    FUNC13("checking client's key");
    if (!FUNC16(FUNC17("Client's key", Kclient,
                  "B0DC82BABCF30674AE450C0287745E7990A3381F63B387AAF271A10D"
                  "233861E359B48220F7C4693C9AE12B0A6F67809F0876E2D013800D6C"
                  "41BB59B6D5979B5C00A172B4A2A5903A0BDCAF8A709585EB2AFAFA8F"
                  "3499B200210DCC1F10EB33943CD67FC88A2F39A4BE5BEC4EC0A3212D"
                  "C346D7E474B29EDE8A469FFECA686E5A")))
        goto err;
    FUNC14("    okay");

    /* Server's key */
    Kserver = FUNC6(Apub, v, u, b, GN->N);
    FUNC13("checking server's key");
    if (!FUNC16(FUNC17("Server's key", Kserver,
                  "B0DC82BABCF30674AE450C0287745E7990A3381F63B387AAF271A10D"
                  "233861E359B48220F7C4693C9AE12B0A6F67809F0876E2D013800D6C"
                  "41BB59B6D5979B5C00A172B4A2A5903A0BDCAF8A709585EB2AFAFA8F"
                  "3499B200210DCC1F10EB33943CD67FC88A2F39A4BE5BEC4EC0A3212D"
                  "C346D7E474B29EDE8A469FFECA686E5A")))
        goto err;
    FUNC14("    okay");

    ret = 1;

err:
    FUNC0(Kclient);
    FUNC0(Kserver);
    FUNC0(x);
    FUNC1(u);
    FUNC1(Apub);
    FUNC0(a);
    FUNC1(Bpub);
    FUNC0(b);
    FUNC1(s);
    FUNC0(v);

    return ret;
}