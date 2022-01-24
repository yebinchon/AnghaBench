#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_7__ {int /*<<< orphan*/  pszDisplayText; } ;
struct TYPE_6__ {int /*<<< orphan*/  cbData; int /*<<< orphan*/  pbData; } ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_1__ CRYPT_OBJID_BLOB ;
typedef  TYPE_2__ CERT_POLICY_QUALIFIER_USER_NOTICE ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPT_DECODE_ALLOC_FLAG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  X509_ASN_ENCODING ; 
 int /*<<< orphan*/  X509_PKIX_POLICY_QUALIFIER_USERNOTICE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static WCHAR *FUNC6(const CRYPT_OBJID_BLOB *qualifier)
{
    LPWSTR str = NULL;
    CERT_POLICY_QUALIFIER_USER_NOTICE *qualifierValue;
    DWORD size;

    if (FUNC0(X509_ASN_ENCODING,
     X509_PKIX_POLICY_QUALIFIER_USERNOTICE,
     qualifier->pbData, qualifier->cbData, CRYPT_DECODE_ALLOC_FLAG, NULL,
     &qualifierValue, &size))
    {
        str = FUNC2(FUNC1(), 0,
         (FUNC5(qualifierValue->pszDisplayText) + 1) * sizeof(WCHAR));
        if (str)
            FUNC4(str, qualifierValue->pszDisplayText);
        FUNC3(qualifierValue);
    }
    return str;
}