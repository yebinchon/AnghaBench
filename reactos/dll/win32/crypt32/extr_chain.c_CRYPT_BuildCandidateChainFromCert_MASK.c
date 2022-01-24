#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int cbSize; int cChain; scalar_t__ dwRevocationFreshnessTime; void* fHasRevocationFreshnessTime; int /*<<< orphan*/ * rgpLowerQualityChainContext; scalar_t__ cLowerQualityChainContext; TYPE_2__** rgpChain; int /*<<< orphan*/  TrustStatus; } ;
struct TYPE_13__ {int ref; TYPE_1__ context; int /*<<< orphan*/  world; } ;
struct TYPE_12__ {int /*<<< orphan*/  hWorld; } ;
struct TYPE_11__ {int /*<<< orphan*/  TrustStatus; } ;
typedef  TYPE_2__* PCERT_SIMPLE_CHAIN ;
typedef  int /*<<< orphan*/  PCCERT_CONTEXT ;
typedef  int /*<<< orphan*/  LPFILETIME ;
typedef  int /*<<< orphan*/  HCERTSTORE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_3__ CertificateChainEngine ;
typedef  TYPE_4__ CertificateChain ;
typedef  int /*<<< orphan*/  CERT_CHAIN_CONTEXT ;
typedef  void* BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CERT_STORE_CREATE_NEW_FLAG ; 
 int /*<<< orphan*/  CERT_STORE_PROV_COLLECTION ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 void* FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int) ; 
 void* FALSE ; 

__attribute__((used)) static BOOL FUNC5(CertificateChainEngine *engine,
 PCCERT_CONTEXT cert, LPFILETIME pTime, HCERTSTORE hAdditionalStore, DWORD flags,
 CertificateChain **ppChain)
{
    PCERT_SIMPLE_CHAIN simpleChain = NULL;
    HCERTSTORE world;
    BOOL ret;

    world = FUNC3(CERT_STORE_PROV_COLLECTION, 0, 0,
     CERT_STORE_CREATE_NEW_FLAG, NULL);
    FUNC2(world, engine->hWorld, 0, 0);
    if (hAdditionalStore)
        FUNC2(world, hAdditionalStore, 0, 0);
    /* FIXME: only simple chains are supported for now, as CTLs aren't
     * supported yet.
     */
    if ((ret = FUNC1(engine, world, cert, pTime, flags, &simpleChain)))
    {
        CertificateChain *chain = FUNC4(sizeof(CertificateChain));

        if (chain)
        {
            chain->ref = 1;
            chain->world = world;
            chain->context.cbSize = sizeof(CERT_CHAIN_CONTEXT);
            chain->context.TrustStatus = simpleChain->TrustStatus;
            chain->context.cChain = 1;
            chain->context.rgpChain = FUNC4(sizeof(PCERT_SIMPLE_CHAIN));
            chain->context.rgpChain[0] = simpleChain;
            chain->context.cLowerQualityChainContext = 0;
            chain->context.rgpLowerQualityChainContext = NULL;
            chain->context.fHasRevocationFreshnessTime = FALSE;
            chain->context.dwRevocationFreshnessTime = 0;
        }
        else
        {
            FUNC0(simpleChain);
            ret = FALSE;
        }
        *ppChain = chain;
    }
    return ret;
}