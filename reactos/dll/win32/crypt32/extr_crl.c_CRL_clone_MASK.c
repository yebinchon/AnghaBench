#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * hCertStore; int /*<<< orphan*/  pCrlInfo; int /*<<< orphan*/  cbCrlEncoded; int /*<<< orphan*/  pbCrlEncoded; int /*<<< orphan*/  dwCertEncodingType; } ;
struct TYPE_5__ {int /*<<< orphan*/  base; TYPE_2__ ctx; } ;
typedef  TYPE_1__ crl_t ;
typedef  int /*<<< orphan*/  context_t ;
typedef  int /*<<< orphan*/  WINECRYPT_CERTSTORE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  CRL_CONTEXT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPT_DECODE_ALLOC_FLAG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  X509_CERT_CRL_TO_BE_SIGNED ; 
 int /*<<< orphan*/  crl_vtbl ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static context_t *FUNC7(context_t *context, WINECRYPT_CERTSTORE *store, BOOL use_link)
{
    crl_t *crl;

    if(use_link) {
        crl = (crl_t*)FUNC3(sizeof(CRL_CONTEXT), context, store);
        if(!crl)
            return NULL;
    }else {
        const crl_t *cloned = (const crl_t*)context;
        DWORD size = 0;
        BOOL res;

        crl = (crl_t*)FUNC2(sizeof(CRL_CONTEXT), &crl_vtbl, store);
        if(!crl)
            return NULL;

        FUNC1(&crl->ctx, &cloned->ctx);

        crl->ctx.dwCertEncodingType = cloned->ctx.dwCertEncodingType;
        crl->ctx.pbCrlEncoded = FUNC5(cloned->ctx.cbCrlEncoded);
        FUNC6(crl->ctx.pbCrlEncoded, cloned->ctx.pbCrlEncoded, cloned->ctx.cbCrlEncoded);
        crl->ctx.cbCrlEncoded = cloned->ctx.cbCrlEncoded;

        /* FIXME: We don't need to decode the object here, we could just clone crl info. */
        res = FUNC4(crl->ctx.dwCertEncodingType, X509_CERT_CRL_TO_BE_SIGNED,
         crl->ctx.pbCrlEncoded, crl->ctx.cbCrlEncoded, CRYPT_DECODE_ALLOC_FLAG, NULL,
         &crl->ctx.pCrlInfo, &size);
        if(!res) {
            FUNC0(&crl->ctx);
            return NULL;
        }
    }

    crl->ctx.hCertStore = store;
    return &crl->base;
}