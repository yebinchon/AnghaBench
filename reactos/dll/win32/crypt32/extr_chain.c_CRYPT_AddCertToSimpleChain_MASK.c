#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  dwInfoStatus; } ;
struct TYPE_14__ {int CycleDetectionModulus; } ;
struct TYPE_13__ {int cbSize; TYPE_8__ TrustStatus; int /*<<< orphan*/  pCertContext; } ;
struct TYPE_12__ {int cElement; int /*<<< orphan*/  TrustStatus; TYPE_2__** rgpElement; } ;
typedef  TYPE_1__* PCERT_SIMPLE_CHAIN ;
typedef  TYPE_2__* PCERT_CHAIN_ELEMENT ;
typedef  int /*<<< orphan*/  PCCERT_CONTEXT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_3__ CertificateChainEngine ;
typedef  int /*<<< orphan*/  CERT_CHAIN_ELEMENT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_2__** FUNC5 (TYPE_2__**,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static BOOL FUNC7(const CertificateChainEngine *engine,
 PCERT_SIMPLE_CHAIN chain, PCCERT_CONTEXT cert, DWORD subjectInfoStatus)
{
    BOOL ret = FALSE;
    PCERT_CHAIN_ELEMENT element = FUNC3(sizeof(CERT_CHAIN_ELEMENT));

    if (element)
    {
        if (!chain->cElement)
            chain->rgpElement = FUNC3(sizeof(PCERT_CHAIN_ELEMENT));
        else
            chain->rgpElement = FUNC5(chain->rgpElement,
             (chain->cElement + 1) * sizeof(PCERT_CHAIN_ELEMENT));
        if (chain->rgpElement)
        {
            chain->rgpElement[chain->cElement++] = element;
            FUNC6(element, 0, sizeof(CERT_CHAIN_ELEMENT));
            element->cbSize = sizeof(CERT_CHAIN_ELEMENT);
            element->pCertContext = FUNC2(cert);
            if (chain->cElement > 1)
                chain->rgpElement[chain->cElement - 2]->TrustStatus.dwInfoStatus
                 = subjectInfoStatus;
            /* FIXME: initialize the rest of element */
            if (!(chain->cElement % engine->CycleDetectionModulus))
            {
                FUNC0(chain);
                /* Reinitialize the element pointer in case the chain is
                 * cyclic, in which case the chain is truncated.
                 */
                element = chain->rgpElement[chain->cElement - 1];
            }
            FUNC1(&chain->TrustStatus,
             &element->TrustStatus);
            ret = TRUE;
        }
        else
            FUNC4(element);
    }
    return ret;
}