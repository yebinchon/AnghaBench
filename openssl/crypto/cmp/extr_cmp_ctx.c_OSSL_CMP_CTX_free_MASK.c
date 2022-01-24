#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
struct TYPE_5__ {int /*<<< orphan*/  extraCertsIn; int /*<<< orphan*/  caPubs; int /*<<< orphan*/  newCert; int /*<<< orphan*/  statusString; int /*<<< orphan*/  genm_ITAVs; int /*<<< orphan*/  p10CSR; int /*<<< orphan*/  oldCert; int /*<<< orphan*/  policies; int /*<<< orphan*/  reqExtensions; int /*<<< orphan*/  subjectAltNames; int /*<<< orphan*/  subjectName; int /*<<< orphan*/  issuer; int /*<<< orphan*/  newPkey; int /*<<< orphan*/  extraCertsOut; int /*<<< orphan*/  geninfo_ITAVs; TYPE_4__* recipNonce; TYPE_4__* senderNonce; TYPE_4__* transactionID; int /*<<< orphan*/  recipient; TYPE_4__* secretValue; TYPE_4__* referenceValue; int /*<<< orphan*/  pkey; int /*<<< orphan*/  clCert; int /*<<< orphan*/  untrusted_certs; int /*<<< orphan*/  trusted; int /*<<< orphan*/  expected_sender; int /*<<< orphan*/  validatedSrvCert; int /*<<< orphan*/  srvCert; struct TYPE_5__* proxyName; struct TYPE_5__* serverName; struct TYPE_5__* serverPath; } ;
typedef  TYPE_1__ OSSL_CMP_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  ASN1_UTF8STRING_free ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENERAL_NAME_free ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  OSSL_CMP_ITAV_free ; 
 int /*<<< orphan*/  POLICYINFO_free ; 
 int /*<<< orphan*/  X509_EXTENSION_free ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ )) ; 

void FUNC14(OSSL_CMP_CTX *ctx)
{
    if (ctx == NULL)
        return;

    FUNC3(ctx->serverPath);
    FUNC3(ctx->serverName);
    FUNC3(ctx->proxyName);

    FUNC7(ctx->srvCert);
    FUNC7(ctx->validatedSrvCert);
    FUNC4(ctx->expected_sender);
    FUNC6(ctx->trusted);
    FUNC13(ctx->untrusted_certs, X509_free);

    FUNC7(ctx->clCert);
    FUNC1(ctx->pkey);
    FUNC0(ctx->referenceValue);
    if (ctx->secretValue != NULL)
        FUNC2(ctx->secretValue->data, ctx->secretValue->length);
    FUNC0(ctx->secretValue);

    FUNC4(ctx->recipient);
    FUNC0(ctx->transactionID);
    FUNC0(ctx->senderNonce);
    FUNC0(ctx->recipNonce);
    FUNC10(ctx->geninfo_ITAVs, OSSL_CMP_ITAV_free);
    FUNC13(ctx->extraCertsOut, X509_free);

    FUNC1(ctx->newPkey);
    FUNC4(ctx->issuer);
    FUNC4(ctx->subjectName);
    FUNC9(ctx->subjectAltNames, GENERAL_NAME_free);
    FUNC12(ctx->reqExtensions, X509_EXTENSION_free);
    FUNC11(ctx->policies, POLICYINFO_free);
    FUNC7(ctx->oldCert);
    FUNC5(ctx->p10CSR);

    FUNC10(ctx->genm_ITAVs, OSSL_CMP_ITAV_free);

    FUNC8(ctx->statusString, ASN1_UTF8STRING_free);
    FUNC7(ctx->newCert);
    FUNC13(ctx->caPubs, X509_free);
    FUNC13(ctx->extraCertsIn, X509_free);

    FUNC3(ctx);
}