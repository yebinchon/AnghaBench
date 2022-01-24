#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_5__ {int /*<<< orphan*/  dwCertEncodingType; TYPE_1__* pCertInfo; } ;
struct TYPE_4__ {int /*<<< orphan*/  Issuer; int /*<<< orphan*/  Subject; } ;
typedef  int /*<<< orphan*/ * PCERT_NAME_BLOB ;
typedef  TYPE_2__* PCCERT_CONTEXT ;
typedef  scalar_t__* LPWSTR ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int CERT_INFO_SUBJECT_FLAG ; 
 int /*<<< orphan*/  CERT_SIMPLE_NAME_STR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 scalar_t__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC3 (scalar_t__*,void const*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static BOOL FUNC5(PCCERT_CONTEXT pCertContext,
 DWORD dwType, DWORD dwFlags, const void *pvPara)
{
    PCERT_NAME_BLOB name;
    DWORD len;
    BOOL ret = FALSE;

    if (dwType & CERT_INFO_SUBJECT_FLAG)
        name = &pCertContext->pCertInfo->Subject;
    else
        name = &pCertContext->pCertInfo->Issuer;
    len = FUNC0(pCertContext->dwCertEncodingType, name,
     CERT_SIMPLE_NAME_STR, NULL, 0);
    if (len)
    {
        LPWSTR str = FUNC1(len * sizeof(WCHAR));

        if (str)
        {
            LPWSTR ptr;

            FUNC0(pCertContext->dwCertEncodingType, name,
             CERT_SIMPLE_NAME_STR, str, len);
            for (ptr = str; *ptr; ptr++)
                *ptr = FUNC4(*ptr);
            if (FUNC3(str, pvPara))
                ret = TRUE;
            FUNC2(str);
        }
    }
    return ret;
}