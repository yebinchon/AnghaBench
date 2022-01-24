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
struct tls_root_ctx {int dummy; } ;
struct options {int ssl_flags; int management_flags; char* cert_file_inline; int /*<<< orphan*/  ecdh_curve; int /*<<< orphan*/  tls_server; int /*<<< orphan*/  crl_file_inline; int /*<<< orphan*/  crl_file; int /*<<< orphan*/  extra_certs_file_inline; int /*<<< orphan*/  extra_certs_file; int /*<<< orphan*/  ca_path; int /*<<< orphan*/  ca_file_inline; scalar_t__ ca_file; int /*<<< orphan*/  priv_key_file_inline; int /*<<< orphan*/  priv_key_file; int /*<<< orphan*/  cert_file; int /*<<< orphan*/  management_certificate; int /*<<< orphan*/  cryptoapi_cert; int /*<<< orphan*/  pkcs11_id; int /*<<< orphan*/  pkcs11_id_management; scalar_t__* pkcs11_providers; int /*<<< orphan*/  pkcs12_file_inline; int /*<<< orphan*/  pkcs12_file; int /*<<< orphan*/  cipher_list_tls13; int /*<<< orphan*/  cipher_list; int /*<<< orphan*/  tls_cert_profile; int /*<<< orphan*/  dh_file_inline; int /*<<< orphan*/  dh_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  INLINE_FILE_TAG ; 
 int MF_EXTERNAL_CERT ; 
 int MF_EXTERNAL_KEY ; 
 int /*<<< orphan*/  M_WARN ; 
 int SSLF_CRL_VERIFY_DIR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  management ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct tls_root_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (struct tls_root_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (struct tls_root_ctx*) ; 
 int /*<<< orphan*/  FUNC8 (struct tls_root_ctx*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct tls_root_ctx*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct tls_root_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct tls_root_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct tls_root_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct tls_root_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct tls_root_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC15 (struct tls_root_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct tls_root_ctx*) ; 
 int /*<<< orphan*/  FUNC17 (struct tls_root_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct tls_root_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct tls_root_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct tls_root_ctx*) ; 
 int /*<<< orphan*/  FUNC21 (struct tls_root_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct tls_root_ctx*,int) ; 
 scalar_t__ FUNC23 (struct tls_root_ctx*) ; 
 int /*<<< orphan*/  FUNC24 (struct tls_root_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC25(const struct options *options, struct tls_root_ctx *new_ctx)
{
    FUNC0(NULL != new_ctx);

    FUNC4();

    if (options->tls_server)
    {
        FUNC20(new_ctx);

        if (options->dh_file)
        {
            FUNC11(new_ctx, options->dh_file,
                                   options->dh_file_inline);
        }
    }
    else                        /* if client */
    {
        FUNC6(new_ctx);
    }

    /* Restrict allowed certificate crypto algorithms */
    FUNC21(new_ctx, options->tls_cert_profile);

    /* Allowable ciphers */
    /* Since @SECLEVEL also influences loading of certificates, set the
     * cipher restrictions before loading certificates */
    FUNC18(new_ctx, options->cipher_list);
    FUNC19(new_ctx, options->cipher_list_tls13);

    if (!FUNC22(new_ctx, options->ssl_flags))
    {
        goto err;
    }

    if (options->pkcs12_file)
    {
        if (0 != FUNC14(new_ctx, options->pkcs12_file,
                                     options->pkcs12_file_inline, !options->ca_file))
        {
            goto err;
        }
    }
#ifdef ENABLE_PKCS11
    else if (options->pkcs11_providers[0])
    {
        if (!tls_ctx_use_pkcs11(new_ctx, options->pkcs11_id_management, options->pkcs11_id))
        {
            msg(M_WARN, "Cannot load certificate \"%s\" using PKCS#11 interface",
                options->pkcs11_id);
            goto err;
        }
    }
#endif
#ifdef ENABLE_CRYPTOAPI
    else if (options->cryptoapi_cert)
    {
        tls_ctx_load_cryptoapi(new_ctx, options->cryptoapi_cert);
    }
#endif
#ifdef ENABLE_MANAGEMENT
    else if (options->management_flags & MF_EXTERNAL_CERT)
    {
        char *cert = management_query_cert(management,
                                           options->management_certificate);
        tls_ctx_load_cert_file(new_ctx, INLINE_FILE_TAG, cert);
        free(cert);
    }
#endif
    else if (options->cert_file)
    {
        FUNC9(new_ctx, options->cert_file, options->cert_file_inline);
    }

    if (options->priv_key_file)
    {
        if (0 != FUNC15(new_ctx, options->priv_key_file,
                                        options->priv_key_file_inline))
        {
            goto err;
        }
    }
#ifdef ENABLE_MANAGEMENT
    else if (options->management_flags & MF_EXTERNAL_KEY)
    {
        if (tls_ctx_use_management_external_key(new_ctx))
        {
            msg(M_WARN, "Cannot initialize mamagement-external-key");
            goto err;
        }
    }
#endif

    if (options->ca_file || options->ca_path)
    {
        FUNC8(new_ctx, options->ca_file, options->ca_file_inline,
                        options->ca_path, options->tls_server);
    }

    /* Load extra certificates that are part of our own certificate
     * chain but shouldn't be included in the verify chain */
    if (options->extra_certs_file)
    {
        FUNC13(new_ctx, options->extra_certs_file, options->extra_certs_file_inline);
    }

    /* Check certificate notBefore and notAfter */
    FUNC5(new_ctx);

    /* Read CRL */
    if (options->crl_file && !(options->ssl_flags & SSLF_CRL_VERIFY_DIR))
    {
        FUNC17(new_ctx, options->crl_file, options->crl_file_inline);
    }

    /* Once keys and cert are loaded, load ECDH parameters */
    if (options->tls_server)
    {
        FUNC12(new_ctx, options->ecdh_curve);
    }

#ifdef ENABLE_CRYPTO_MBEDTLS
    /* Personalise the random by mixing in the certificate */
    tls_ctx_personalise_random(new_ctx);
#endif

    FUNC4();
    return;

err:
    FUNC4();
    FUNC7(new_ctx);
    return;
}