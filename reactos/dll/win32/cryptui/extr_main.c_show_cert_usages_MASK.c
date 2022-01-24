#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct edit_cert_data {scalar_t__ imageList; int /*<<< orphan*/  cert; } ;
struct TYPE_10__ {scalar_t__ cx; int /*<<< orphan*/  mask; } ;
struct TYPE_9__ {size_t cUsageIdentifier; int /*<<< orphan*/ * rgpszUsageIdentifier; } ;
struct TYPE_8__ {scalar_t__ left; scalar_t__ right; } ;
typedef  TYPE_1__ RECT ;
typedef  scalar_t__ PurposeSelection ;
typedef  TYPE_2__* PCERT_ENHKEY_USAGE ;
typedef  scalar_t__ PCCRYPT_OID_INFO ;
typedef  int /*<<< orphan*/  PCCERT_CONTEXT ;
typedef  TYPE_3__ LVCOLUMNW ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  BM_CLICK ; 
 int /*<<< orphan*/  CERT_FIND_EXT_ONLY_ENHKEY_USAGE_FLAG ; 
 int /*<<< orphan*/  CERT_FIND_PROP_ONLY_ENHKEY_USAGE_FLAG ; 
 int /*<<< orphan*/  CRYPT_ENHKEY_USAGE_OID_GROUP_ID ; 
 int /*<<< orphan*/  CRYPT_OID_INFO_OID_KEY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,size_t*) ; 
 int /*<<< orphan*/  CheckBitmapIndexDisabledChecked ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ IDC_CERTIFICATE_USAGES ; 
 scalar_t__ IDC_ENABLE_ALL_PURPOSES ; 
 int /*<<< orphan*/  LVCF_WIDTH ; 
 int /*<<< orphan*/  LVM_INSERTCOLUMNW ; 
 int /*<<< orphan*/  LVM_SETIMAGELIST ; 
 int /*<<< orphan*/  LVSIL_STATE ; 
 scalar_t__ PurposeDisableAll ; 
 scalar_t__ PurposeEnableAll ; 
 scalar_t__ PurposeEnableSelected ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC12(HWND hwnd, struct edit_cert_data *data)
{
    PCCERT_CONTEXT cert = data->cert;
    HWND lv = FUNC2(hwnd, IDC_CERTIFICATE_USAGES);
    PCERT_ENHKEY_USAGE usage;
    DWORD size;
    RECT rc;
    LVCOLUMNW column;
    PurposeSelection purposeSelection = PurposeEnableAll;

    FUNC4(lv, &rc);
    column.mask = LVCF_WIDTH;
    column.cx = rc.right - rc.left;
    FUNC7(lv, LVM_INSERTCOLUMNW, 0, (LPARAM)&column);
    FUNC7(lv, LVM_SETIMAGELIST, LVSIL_STATE, (LPARAM)data->imageList);

    /* Get enhanced key usage.  Have to check for a property and an extension
     * separately, because CertGetEnhancedKeyUsage will succeed and return an
     * empty usage if neither is set.  Unfortunately an empty usage implies
     * no usage is allowed, so we have to distinguish between the two cases.
     */
    if (FUNC0(cert, CERT_FIND_PROP_ONLY_ENHKEY_USAGE_FLAG,
     NULL, &size))
    {
        usage = FUNC5(FUNC3(), 0, size);
        if (!FUNC0(cert,
         CERT_FIND_PROP_ONLY_ENHKEY_USAGE_FLAG, usage, &size))
        {
            FUNC6(FUNC3(), 0, usage);
            usage = NULL;
        }
        else if (usage->cUsageIdentifier)
            purposeSelection = PurposeEnableSelected;
        else
            purposeSelection = PurposeDisableAll;
    }
    else if (FUNC0(cert, CERT_FIND_EXT_ONLY_ENHKEY_USAGE_FLAG,
     NULL, &size))
    {
        usage = FUNC5(FUNC3(), 0, size);
        if (!FUNC0(cert,
         CERT_FIND_EXT_ONLY_ENHKEY_USAGE_FLAG, usage, &size))
        {
            FUNC6(FUNC3(), 0, usage);
            usage = NULL;
        }
        else if (usage->cUsageIdentifier)
            purposeSelection = PurposeEnableAll;
        else
            purposeSelection = PurposeDisableAll;
    }
    else
    {
        purposeSelection = PurposeEnableAll;
        usage = NULL;
    }
    if (usage)
    {
        DWORD i;

        for (i = 0; i < usage->cUsageIdentifier; i++)
        {
            PCCRYPT_OID_INFO info = FUNC1(CRYPT_OID_INFO_OID_KEY,
             usage->rgpszUsageIdentifier[i], CRYPT_ENHKEY_USAGE_OID_GROUP_ID);

            if (info)
                FUNC8(lv, info, CheckBitmapIndexDisabledChecked);
            else
                FUNC10(hwnd, usage->rgpszUsageIdentifier[i]);
        }
        FUNC6(FUNC3(), 0, usage);
    }
    else
        FUNC9(lv, CheckBitmapIndexDisabledChecked);
    FUNC11(hwnd, purposeSelection);
    FUNC7(FUNC2(hwnd, IDC_ENABLE_ALL_PURPOSES + purposeSelection),
     BM_CLICK, 0, 0);
}