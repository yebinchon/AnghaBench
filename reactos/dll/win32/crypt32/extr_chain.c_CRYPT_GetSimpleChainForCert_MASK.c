#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int cbSize; } ;
typedef  TYPE_1__* PCERT_SIMPLE_CHAIN ;
typedef  int /*<<< orphan*/  PCCERT_CONTEXT ;
typedef  int /*<<< orphan*/  LPFILETIME ;
typedef  int /*<<< orphan*/  HCERTSTORE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  CertificateChainEngine ;
typedef  int /*<<< orphan*/  CERT_SIMPLE_CHAIN ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static BOOL FUNC8(CertificateChainEngine *engine,
 HCERTSTORE world, PCCERT_CONTEXT cert, LPFILETIME pTime, DWORD flags,
 PCERT_SIMPLE_CHAIN *ppChain)
{
    BOOL ret = FALSE;
    PCERT_SIMPLE_CHAIN chain;

    FUNC5("(%p, %p, %p, %s)\n", engine, world, cert, FUNC6(pTime));

    chain = FUNC4(sizeof(CERT_SIMPLE_CHAIN));
    if (chain)
    {
        FUNC7(chain, 0, sizeof(CERT_SIMPLE_CHAIN));
        chain->cbSize = sizeof(CERT_SIMPLE_CHAIN);
        ret = FUNC0(engine, chain, cert, 0);
        if (ret)
        {
            ret = FUNC1(engine, world, flags, chain);
            if (ret)
                FUNC2(engine, chain, pTime);
        }
        if (!ret)
        {
            FUNC3(chain);
            chain = NULL;
        }
        *ppChain = chain;
    }
    return ret;
}