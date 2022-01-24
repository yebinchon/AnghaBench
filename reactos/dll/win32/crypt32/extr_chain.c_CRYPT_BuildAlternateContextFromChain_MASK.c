#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_15__ ;

/* Type definitions */
struct TYPE_23__ {int cLowerQualityChainContext; int cChain; TYPE_15__** rgpChain; int /*<<< orphan*/  TrustStatus; scalar_t__* rgpLowerQualityChainContext; } ;
struct TYPE_25__ {TYPE_2__ context; int /*<<< orphan*/  world; } ;
struct TYPE_24__ {int /*<<< orphan*/  hCertStore; } ;
struct TYPE_22__ {TYPE_3__* pCertContext; } ;
struct TYPE_21__ {int cElement; int /*<<< orphan*/  TrustStatus; TYPE_1__** rgpElement; } ;
typedef  TYPE_3__* PCCERT_CONTEXT ;
typedef  int /*<<< orphan*/  LPFILETIME ;
typedef  int /*<<< orphan*/  HCERTSTORE ;
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  CertificateChainEngine ;
typedef  TYPE_4__ CertificateChain ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_15__*,TYPE_3__*,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,TYPE_15__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_15__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC4 (TYPE_4__*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*,TYPE_3__*,size_t,size_t*) ; 
 TYPE_3__* FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,TYPE_4__*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static CertificateChain *FUNC11(
 CertificateChainEngine *engine, LPFILETIME pTime, HCERTSTORE hAdditionalStore,
 DWORD flags, CertificateChain *chain)
{
    CertificateChain *alternate;

    FUNC9("(%p, %s, %p, %p)\n", engine, FUNC10(pTime),
     hAdditionalStore, chain);

    /* Always start with the last "lower quality" chain to ensure a consistent
     * order of alternate creation:
     */
    if (chain->context.cLowerQualityChainContext)
        chain = (CertificateChain*)chain->context.rgpLowerQualityChainContext[
         chain->context.cLowerQualityChainContext - 1];
    /* A chain with only one element can't have any alternates */
    if (chain->context.cChain <= 1 && chain->context.rgpChain[0]->cElement <= 1)
        alternate = NULL;
    else
    {
        DWORD i, j, infoStatus;
        PCCERT_CONTEXT alternateIssuer = NULL;

        alternate = NULL;
        for (i = 0; !alternateIssuer && i < chain->context.cChain; i++)
            for (j = 0; !alternateIssuer &&
             j < chain->context.rgpChain[i]->cElement - 1; j++)
            {
                PCCERT_CONTEXT subject =
                 chain->context.rgpChain[i]->rgpElement[j]->pCertContext;
                PCCERT_CONTEXT prevIssuer = FUNC7(
                 chain->context.rgpChain[i]->rgpElement[j + 1]->pCertContext);

                alternateIssuer = FUNC6(engine, prevIssuer->hCertStore,
                 subject, prevIssuer, flags, &infoStatus);
            }
        if (alternateIssuer)
        {
            i--;
            j--;
            alternate = FUNC4(chain, i, j);
            if (alternate)
            {
                BOOL ret = FUNC0(engine,
                 alternate->context.rgpChain[i], alternateIssuer, infoStatus);

                /* CRYPT_AddCertToSimpleChain add-ref's the issuer, so free it
                 * to close the enumeration that found it
                 */
                FUNC8(alternateIssuer);
                if (ret)
                {
                    ret = FUNC1(engine, alternate->world,
                     flags, alternate->context.rgpChain[i]);
                    if (ret)
                        FUNC2(engine,
                         alternate->context.rgpChain[i], pTime);
                    FUNC3(&alternate->context.TrustStatus,
                     &alternate->context.rgpChain[i]->TrustStatus);
                }
                if (!ret)
                {
                    FUNC5(alternate);
                    alternate = NULL;
                }
            }
        }
    }
    FUNC9("%p\n", alternate);
    return alternate;
}