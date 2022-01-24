#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int cElement; } ;
struct TYPE_9__ {int cbSize; int cChain; TYPE_3__** rgpChain; scalar_t__ dwRevocationFreshnessTime; void* fHasRevocationFreshnessTime; int /*<<< orphan*/ * rgpLowerQualityChainContext; scalar_t__ cLowerQualityChainContext; TYPE_3__* TrustStatus; } ;
struct TYPE_10__ {int ref; TYPE_1__ context; int /*<<< orphan*/  world; } ;
typedef  int /*<<< orphan*/  PCERT_SIMPLE_CHAIN ;
typedef  int DWORD ;
typedef  TYPE_2__ CertificateChain ;
typedef  int /*<<< orphan*/  CERT_TRUST_STATUS ;
typedef  int /*<<< orphan*/  CERT_CHAIN_CONTEXT ;
typedef  void* BOOL ;

/* Variables and functions */
 void* FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 void* FALSE ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__**,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static CertificateChain *FUNC6(CertificateChain *chain,
 DWORD iChain, DWORD iElement)
{
    CertificateChain *copy = FUNC3(sizeof(CertificateChain));

    if (copy)
    {
        copy->ref = 1;
        copy->world = FUNC2(chain->world);
        copy->context.cbSize = sizeof(CERT_CHAIN_CONTEXT);
        /* Leave the trust status of the copied chain unset, it'll get
         * rechecked after the new chain is done.
         */
        FUNC5(&copy->context.TrustStatus, 0, sizeof(CERT_TRUST_STATUS));
        copy->context.cLowerQualityChainContext = 0;
        copy->context.rgpLowerQualityChainContext = NULL;
        copy->context.fHasRevocationFreshnessTime = FALSE;
        copy->context.dwRevocationFreshnessTime = 0;
        copy->context.rgpChain = FUNC3(
         (iChain + 1) * sizeof(PCERT_SIMPLE_CHAIN));
        if (copy->context.rgpChain)
        {
            BOOL ret = TRUE;
            DWORD i;

            FUNC5(copy->context.rgpChain, 0,
             (iChain + 1) * sizeof(PCERT_SIMPLE_CHAIN));
            if (iChain)
            {
                for (i = 0; ret && iChain && i < iChain - 1; i++)
                {
                    copy->context.rgpChain[i] =
                     FUNC0(chain->context.rgpChain[i],
                     chain->context.rgpChain[i]->cElement - 1);
                    if (!copy->context.rgpChain[i])
                        ret = FALSE;
                }
            }
            else
                i = 0;
            if (ret)
            {
                copy->context.rgpChain[i] =
                 FUNC0(chain->context.rgpChain[i],
                 iElement);
                if (!copy->context.rgpChain[i])
                    ret = FALSE;
            }
            if (!ret)
            {
                FUNC1(copy);
                copy = NULL;
            }
            else
                copy->context.cChain = iChain + 1;
        }
        else
        {
            FUNC4(copy);
            copy = NULL;
        }
    }
    return copy;
}