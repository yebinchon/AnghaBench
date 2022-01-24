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
struct dasync_pipeline_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  SHA_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  BN_mod_exp_mont ; 
 int /*<<< orphan*/  DASYNC_F_BIND_DASYNC ; 
 int /*<<< orphan*/  DASYNC_R_INIT_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int EVP_CIPH_CBC_MODE ; 
 int EVP_CIPH_FLAG_AEAD_CIPHER ; 
 int EVP_CIPH_FLAG_DEFAULT_ASN1 ; 
 int EVP_CIPH_FLAG_PIPELINE ; 
 int /*<<< orphan*/  EVP_MD_FLAG_DIGALGID_ABSENT ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NID_aes_128_cbc ; 
 int /*<<< orphan*/  NID_aes_128_cbc_hmac_sha1 ; 
 int /*<<< orphan*/  NID_sha1 ; 
 int /*<<< orphan*/  NID_sha1WithRSAEncryption ; 
 int /*<<< orphan*/ * FUNC28 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC32 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC33 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC34 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC35 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC36 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHA_CBLOCK ; 
 int /*<<< orphan*/  SHA_DIGEST_LENGTH ; 
 int /*<<< orphan*/ * _hidden_aes_128_cbc ; 
 int /*<<< orphan*/ * _hidden_aes_128_cbc_hmac_sha1 ; 
 int /*<<< orphan*/ * _hidden_sha1_md ; 
 int /*<<< orphan*/  dasync_aes128_cbc_cipher ; 
 int /*<<< orphan*/  dasync_aes128_cbc_cleanup ; 
 int /*<<< orphan*/  dasync_aes128_cbc_ctrl ; 
 int /*<<< orphan*/  dasync_aes128_cbc_hmac_sha1_cipher ; 
 int /*<<< orphan*/  dasync_aes128_cbc_hmac_sha1_cleanup ; 
 int /*<<< orphan*/  dasync_aes128_cbc_hmac_sha1_ctrl ; 
 int /*<<< orphan*/  dasync_aes128_cbc_hmac_sha1_init_key ; 
 int /*<<< orphan*/  dasync_aes128_init_key ; 
 int /*<<< orphan*/  dasync_ciphers ; 
 int /*<<< orphan*/  dasync_destroy ; 
 int /*<<< orphan*/  dasync_digests ; 
 int /*<<< orphan*/  dasync_finish ; 
 int /*<<< orphan*/  dasync_init ; 
 int /*<<< orphan*/  dasync_pub_dec ; 
 int /*<<< orphan*/  dasync_pub_enc ; 
 int /*<<< orphan*/  dasync_rsa_finish ; 
 int /*<<< orphan*/  dasync_rsa_init ; 
 int /*<<< orphan*/ * dasync_rsa_method ; 
 int /*<<< orphan*/  dasync_rsa_mod_exp ; 
 int /*<<< orphan*/  dasync_rsa_priv_dec ; 
 int /*<<< orphan*/  dasync_rsa_priv_enc ; 
 int /*<<< orphan*/  dasync_sha1_final ; 
 int /*<<< orphan*/  dasync_sha1_init ; 
 int /*<<< orphan*/  dasync_sha1_update ; 
 int /*<<< orphan*/  engine_dasync_id ; 
 int /*<<< orphan*/  engine_dasync_name ; 

__attribute__((used)) static int FUNC37(ENGINE *e)
{
    /* Setup RSA_METHOD */
    if ((dasync_rsa_method = FUNC28("Dummy Async RSA method", 0)) == NULL
        || FUNC36(dasync_rsa_method, dasync_pub_enc) == 0
        || FUNC35(dasync_rsa_method, dasync_pub_dec) == 0
        || FUNC34(dasync_rsa_method, dasync_rsa_priv_enc) == 0
        || FUNC33(dasync_rsa_method, dasync_rsa_priv_dec) == 0
        || FUNC32(dasync_rsa_method, dasync_rsa_mod_exp) == 0
        || FUNC29(dasync_rsa_method, BN_mod_exp_mont) == 0
        || FUNC31(dasync_rsa_method, dasync_rsa_init) == 0
        || FUNC30(dasync_rsa_method, dasync_rsa_finish) == 0) {
        FUNC0(DASYNC_F_BIND_DASYNC, DASYNC_R_INIT_FAILED);
        return 0;
    }

    /* Ensure the dasync error handling is set up */
    FUNC9();

    if (!FUNC6(e, engine_dasync_id)
        || !FUNC8(e, engine_dasync_name)
        || !FUNC1(e, dasync_rsa_method)
        || !FUNC4(e, dasync_digests)
        || !FUNC2(e, dasync_ciphers)
        || !FUNC3(e, dasync_destroy)
        || !FUNC7(e, dasync_init)
        || !FUNC5(e, dasync_finish)) {
        FUNC0(DASYNC_F_BIND_DASYNC, DASYNC_R_INIT_FAILED);
        return 0;
    }

    /*
     * Set up the EVP_CIPHER and EVP_MD objects for the ciphers/digests
     * supplied by this engine
     */
    _hidden_sha1_md = FUNC20(NID_sha1, NID_sha1WithRSAEncryption);
    if (_hidden_sha1_md == NULL
        || !FUNC26(_hidden_sha1_md, SHA_DIGEST_LENGTH)
        || !FUNC25(_hidden_sha1_md, SHA_CBLOCK)
        || !FUNC21(_hidden_sha1_md,
                                         sizeof(EVP_MD *) + sizeof(SHA_CTX))
        || !FUNC23(_hidden_sha1_md, EVP_MD_FLAG_DIGALGID_ABSENT)
        || !FUNC24(_hidden_sha1_md, dasync_sha1_init)
        || !FUNC27(_hidden_sha1_md, dasync_sha1_update)
        || !FUNC22(_hidden_sha1_md, dasync_sha1_final)) {
        FUNC19(_hidden_sha1_md);
        _hidden_sha1_md = NULL;
    }

    _hidden_aes_128_cbc = FUNC11(NID_aes_128_cbc,
                                              16 /* block size */,
                                              16 /* key len */);
    if (_hidden_aes_128_cbc == NULL
            || !FUNC18(_hidden_aes_128_cbc,16)
            || !FUNC15(_hidden_aes_128_cbc,
                                          EVP_CIPH_FLAG_DEFAULT_ASN1
                                          | EVP_CIPH_CBC_MODE
                                          | EVP_CIPH_FLAG_PIPELINE)
            || !FUNC17(_hidden_aes_128_cbc,
                                         dasync_aes128_init_key)
            || !FUNC14(_hidden_aes_128_cbc,
                                              dasync_aes128_cbc_cipher)
            || !FUNC12(_hidden_aes_128_cbc,
                                            dasync_aes128_cbc_cleanup)
            || !FUNC13(_hidden_aes_128_cbc,
                                         dasync_aes128_cbc_ctrl)
            || !FUNC16(_hidden_aes_128_cbc,
                                sizeof(struct dasync_pipeline_ctx))) {
        FUNC10(_hidden_aes_128_cbc);
        _hidden_aes_128_cbc = NULL;
    }

    _hidden_aes_128_cbc_hmac_sha1 = FUNC11(
                                                NID_aes_128_cbc_hmac_sha1,
                                                16 /* block size */,
                                                16 /* key len */);
    if (_hidden_aes_128_cbc_hmac_sha1 == NULL
            || !FUNC18(_hidden_aes_128_cbc_hmac_sha1,16)
            || !FUNC15(_hidden_aes_128_cbc_hmac_sha1,
                                            EVP_CIPH_CBC_MODE
                                          | EVP_CIPH_FLAG_DEFAULT_ASN1
                                          | EVP_CIPH_FLAG_AEAD_CIPHER
                                          | EVP_CIPH_FLAG_PIPELINE)
            || !FUNC17(_hidden_aes_128_cbc_hmac_sha1,
                                         dasync_aes128_cbc_hmac_sha1_init_key)
            || !FUNC14(_hidden_aes_128_cbc_hmac_sha1,
                                            dasync_aes128_cbc_hmac_sha1_cipher)
            || !FUNC12(_hidden_aes_128_cbc_hmac_sha1,
                                            dasync_aes128_cbc_hmac_sha1_cleanup)
            || !FUNC13(_hidden_aes_128_cbc_hmac_sha1,
                                         dasync_aes128_cbc_hmac_sha1_ctrl)
            || !FUNC16(_hidden_aes_128_cbc_hmac_sha1,
                                sizeof(struct dasync_pipeline_ctx))) {
        FUNC10(_hidden_aes_128_cbc_hmac_sha1);
        _hidden_aes_128_cbc_hmac_sha1 = NULL;
    }

    return 1;
}