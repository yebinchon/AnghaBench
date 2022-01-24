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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  HCERTSTORE ;
typedef  size_t DWORD ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/  const* const*) ; 
#define  CERT_STORE_CERTIFICATE_CONTEXT_FLAG 133 
#define  CERT_STORE_CRL_CONTEXT_FLAG 132 
#define  CERT_STORE_CTL_CONTEXT_FLAG 131 
#define  CRLsW 130 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t const,int /*<<< orphan*/ ) ; 
#define  CTLsW 129 
#define  CertsW 128 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const* const,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(HKEY key, HCERTSTORE store)
{
    static const WCHAR * const subKeys[] = { CertsW, CRLsW, CTLsW };
    static const DWORD contextFlags[] = { CERT_STORE_CERTIFICATE_CONTEXT_FLAG,
     CERT_STORE_CRL_CONTEXT_FLAG, CERT_STORE_CTL_CONTEXT_FLAG };
    DWORD i;

    for (i = 0; i < FUNC0(subKeys); i++)
    {
        HKEY hKey;
        LONG rc;

        rc = FUNC3(key, subKeys[i], 0, NULL, 0, KEY_READ, NULL,
         &hKey, NULL);
        if (!rc)
        {
            FUNC1(hKey, contextFlags[i], store);
            FUNC2(hKey);
        }
    }
}