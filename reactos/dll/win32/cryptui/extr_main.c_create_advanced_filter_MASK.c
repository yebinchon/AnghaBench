#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {size_t cUsageIdentifier; struct TYPE_16__* rgpszUsageIdentifier; } ;
struct TYPE_15__ {scalar_t__ pszOID; } ;
typedef  TYPE_1__* PCCRYPT_OID_INFO ;
typedef  TYPE_2__* LPSTR ;
typedef  size_t DWORD ;
typedef  TYPE_2__ CERT_ENHKEY_USAGE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC3 (int,TYPE_1__***) ; 
 TYPE_2__* FUNC4 (TYPE_2__*,TYPE_2__*) ; 
 TYPE_2__* FUNC5 (TYPE_2__*) ; 
 TYPE_2__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__,scalar_t__) ; 

__attribute__((used)) static CERT_ENHKEY_USAGE *FUNC8(void)
{
    CERT_ENHKEY_USAGE *advancedUsage = FUNC1(FUNC0(),
     HEAP_ZERO_MEMORY, sizeof(CERT_ENHKEY_USAGE));

    if (advancedUsage)
    {
        PCCRYPT_OID_INFO *usages;

        if (FUNC3(1, &usages))
        {
            LPSTR disabledUsagesStr;

            if ((disabledUsagesStr = FUNC6()))
            {
                CERT_ENHKEY_USAGE *disabledUsages =
                 FUNC5(disabledUsagesStr);

                if (disabledUsages)
                {
                    PCCRYPT_OID_INFO *ptr;

                    for (ptr = usages; advancedUsage && *ptr; ptr++)
                    {
                        DWORD i;
                        BOOL disabled = FALSE;

                        for (i = 0; !disabled &&
                         i < disabledUsages->cUsageIdentifier; i++)
                            if (!FUNC7(disabledUsages->rgpszUsageIdentifier[i],
                             (*ptr)->pszOID))
                                disabled = TRUE;
                        if (!disabled)
                            advancedUsage = FUNC4(advancedUsage,
                             (LPSTR)(*ptr)->pszOID);
                    }
                    /* The individual strings are pointers to disabledUsagesStr,
                     * so they're freed when it is.
                     */
                    FUNC2(FUNC0(), 0,
                     disabledUsages->rgpszUsageIdentifier);
                    FUNC2(FUNC0(), 0, disabledUsages);
                }
                FUNC2(FUNC0(), 0, disabledUsagesStr);
            }
            FUNC3(2, &usages);
        }
    }
    return advancedUsage;
}