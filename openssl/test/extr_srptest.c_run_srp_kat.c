
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int N; int g; } ;
typedef TYPE_1__ SRP_gN ;
typedef int BIGNUM ;


 int BN_clear_free (int *) ;
 int BN_free (int *) ;
 int BN_hex2bn (int **,char*) ;
 int * SRP_Calc_A (int *,int ,int ) ;
 int * SRP_Calc_B (int *,int ,int ,int *) ;
 int * SRP_Calc_client_key (int ,int *,int ,int *,int *,int *) ;
 int * SRP_Calc_server_key (int *,int *,int *,int *,int ) ;
 int * SRP_Calc_u (int *,int *,int ) ;
 int * SRP_Calc_x (int *,char*,char*) ;
 int SRP_Verify_A_mod_N (int *,int ) ;
 int SRP_Verify_B_mod_N (int *,int ) ;
 int SRP_create_verifier_BN (char*,char*,int **,int **,int ,int ) ;
 TYPE_1__* SRP_get_default_gN (char*) ;
 int TEST_info (char*) ;
 int TEST_note (char*) ;
 int TEST_ptr (TYPE_1__ const*) ;
 int TEST_true (int ) ;
 int check_bn (char*,int *,char*) ;

__attribute__((used)) static int run_srp_kat(void)
{
    int ret = 0;
    BIGNUM *s = ((void*)0);
    BIGNUM *v = ((void*)0);
    BIGNUM *a = ((void*)0);
    BIGNUM *b = ((void*)0);
    BIGNUM *u = ((void*)0);
    BIGNUM *x = ((void*)0);
    BIGNUM *Apub = ((void*)0);
    BIGNUM *Bpub = ((void*)0);
    BIGNUM *Kclient = ((void*)0);
    BIGNUM *Kserver = ((void*)0);

    const SRP_gN *GN;

    if (!TEST_ptr(GN = SRP_get_default_gN("1024")))
        goto err;
    BN_hex2bn(&s, "BEB25379D1A8581EB5A727673A2441EE");

    if (!TEST_true(SRP_create_verifier_BN("alice", "password123", &s, &v, GN->N,
                                          GN->g)))
        goto err;

    TEST_info("checking v");
    if (!TEST_true(check_bn("v", v,
                 "7E273DE8696FFC4F4E337D05B4B375BEB0DDE1569E8FA00A9886D812"
                 "9BADA1F1822223CA1A605B530E379BA4729FDC59F105B4787E5186F5"
                 "C671085A1447B52A48CF1970B4FB6F8400BBF4CEBFBB168152E08AB5"
                 "EA53D15C1AFF87B2B9DA6E04E058AD51CC72BFC9033B564E26480D78"
                 "E955A5E29E7AB245DB2BE315E2099AFB")))
        goto err;
    TEST_note("    okay");


    BN_hex2bn(&b, "E487CB59D31AC550471E81F00F6928E01DDA08E974A004F49E61F5D1"
                  "05284D20");


    Bpub = SRP_Calc_B(b, GN->N, GN->g, v);
    if (!TEST_true(SRP_Verify_B_mod_N(Bpub, GN->N)))
        goto err;

    TEST_info("checking B");
    if (!TEST_true(check_bn("B", Bpub,
                  "BD0C61512C692C0CB6D041FA01BB152D4916A1E77AF46AE105393011"
                  "BAF38964DC46A0670DD125B95A981652236F99D9B681CBF87837EC99"
                  "6C6DA04453728610D0C6DDB58B318885D7D82C7F8DEB75CE7BD4FBAA"
                  "37089E6F9C6059F388838E7A00030B331EB76840910440B1B27AAEAE"
                  "EB4012B7D7665238A8E3FB004B117B58")))
        goto err;
    TEST_note("    okay");


    BN_hex2bn(&a, "60975527035CF2AD1989806F0407210BC81EDC04E2762A56AFD529DD"
                  "DA2D4393");


    Apub = SRP_Calc_A(a, GN->N, GN->g);
    if (!TEST_true(SRP_Verify_A_mod_N(Apub, GN->N)))
        goto err;

    TEST_info("checking A");
    if (!TEST_true(check_bn("A", Apub,
                  "61D5E490F6F1B79547B0704C436F523DD0E560F0C64115BB72557EC4"
                  "4352E8903211C04692272D8B2D1A5358A2CF1B6E0BFCF99F921530EC"
                  "8E39356179EAE45E42BA92AEACED825171E1E8B9AF6D9C03E1327F44"
                  "BE087EF06530E69F66615261EEF54073CA11CF5858F0EDFDFE15EFEA"
                  "B349EF5D76988A3672FAC47B0769447B")))
        goto err;
    TEST_note("    okay");


    u = SRP_Calc_u(Apub, Bpub, GN->N);

    if (!TEST_true(check_bn("u", u,
                    "CE38B9593487DA98554ED47D70A7AE5F462EF019")))
        goto err;


    x = SRP_Calc_x(s, "alice", "password123");
    Kclient = SRP_Calc_client_key(GN->N, Bpub, GN->g, x, a, u);
    TEST_info("checking client's key");
    if (!TEST_true(check_bn("Client's key", Kclient,
                  "B0DC82BABCF30674AE450C0287745E7990A3381F63B387AAF271A10D"
                  "233861E359B48220F7C4693C9AE12B0A6F67809F0876E2D013800D6C"
                  "41BB59B6D5979B5C00A172B4A2A5903A0BDCAF8A709585EB2AFAFA8F"
                  "3499B200210DCC1F10EB33943CD67FC88A2F39A4BE5BEC4EC0A3212D"
                  "C346D7E474B29EDE8A469FFECA686E5A")))
        goto err;
    TEST_note("    okay");


    Kserver = SRP_Calc_server_key(Apub, v, u, b, GN->N);
    TEST_info("checking server's key");
    if (!TEST_true(check_bn("Server's key", Kserver,
                  "B0DC82BABCF30674AE450C0287745E7990A3381F63B387AAF271A10D"
                  "233861E359B48220F7C4693C9AE12B0A6F67809F0876E2D013800D6C"
                  "41BB59B6D5979B5C00A172B4A2A5903A0BDCAF8A709585EB2AFAFA8F"
                  "3499B200210DCC1F10EB33943CD67FC88A2F39A4BE5BEC4EC0A3212D"
                  "C346D7E474B29EDE8A469FFECA686E5A")))
        goto err;
    TEST_note("    okay");

    ret = 1;

err:
    BN_clear_free(Kclient);
    BN_clear_free(Kserver);
    BN_clear_free(x);
    BN_free(u);
    BN_free(Apub);
    BN_clear_free(a);
    BN_free(Bpub);
    BN_clear_free(b);
    BN_free(s);
    BN_clear_free(v);

    return ret;
}
