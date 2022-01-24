#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  szValue ;
typedef  int /*<<< orphan*/  szNumberA ;
typedef  int /*<<< orphan*/  szNumber ;
typedef  char WCHAR ;
typedef  int ULONG ;
struct TYPE_3__ {scalar_t__ lgrpid; int /*<<< orphan*/  lParam; scalar_t__ (* procA ) (scalar_t__,void*,char*,int /*<<< orphan*/ ) ;scalar_t__ (* procW ) (scalar_t__,void*,char*,int /*<<< orphan*/ ) ;scalar_t__ dwFlags; } ;
typedef  scalar_t__ LGRPID ;
typedef  void* LCID ;
typedef  scalar_t__ HANDLE ;
typedef  TYPE_1__ ENUMLANGUAGEGROUPLOCALE_CALLBACKS ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  ERROR_INVALID_FLAGS ; 
 int /*<<< orphan*/  ERROR_INVALID_PARAMETER ; 
 scalar_t__ FALSE ; 
 scalar_t__ LGRPID_ARMENIAN ; 
 scalar_t__ FUNC0 (scalar_t__,int,char*,int,char*,int) ; 
 scalar_t__ FUNC1 (scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,scalar_t__,char*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 void* FUNC8 (char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (scalar_t__,void*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__,void*,char*,int /*<<< orphan*/ ) ; 
 char const* szLocaleKeyName ; 

__attribute__((used)) static BOOL FUNC11(ENUMLANGUAGEGROUPLOCALE_CALLBACKS *lpProcs)
{
    static const WCHAR szAlternateSortsKeyName[] = {
      'A','l','t','e','r','n','a','t','e',' ','S','o','r','t','s','\0'
    };
    WCHAR szNumber[10], szValue[4];
    HANDLE hKey;
    BOOL bContinue = TRUE, bAlternate = FALSE;
    LGRPID lgrpid;
    ULONG ulIndex = 1;  /* Ignore default entry of 1st key */

    if (!lpProcs || !lpProcs->lgrpid || lpProcs->lgrpid > LGRPID_ARMENIAN)
    {
        FUNC3(ERROR_INVALID_PARAMETER);
        return FALSE;
    }

    if (lpProcs->dwFlags)
    {
        FUNC3(ERROR_INVALID_FLAGS);
        return FALSE;
    }

    hKey = FUNC1( 0, szLocaleKeyName );

    if (!hKey)
        FUNC5("NLS registry key not found. Please apply the default registry file 'wine.inf'\n");

    while (bContinue)
    {
        if (FUNC0( hKey, ulIndex, szNumber, sizeof(szNumber),
                              szValue, sizeof(szValue) ))
        {
            lgrpid = FUNC8( szValue, NULL, 16 );

            FUNC4("lcid %s, grpid %d (%smatched)\n", FUNC7(szNumber),
                   lgrpid, lgrpid == lpProcs->lgrpid ? "" : "not ");

            if (lgrpid == lpProcs->lgrpid)
            {
                LCID lcid;

                lcid = FUNC8( szNumber, NULL, 16 );

                /* FIXME: native returns extra text for a few (17/150) locales, e.g:
                 * '00000437          ;Georgian'
                 * At present we only pass the LCID string.
                 */

                if (lpProcs->procW)
                    bContinue = lpProcs->procW( lgrpid, lcid, szNumber, lpProcs->lParam );
                else
                {
                    char szNumberA[sizeof(szNumber)/sizeof(WCHAR)];

                    FUNC6(CP_ACP, 0, szNumber, -1, szNumberA, sizeof(szNumberA), 0, 0);

                    bContinue = lpProcs->procA( lgrpid, lcid, szNumberA, lpProcs->lParam );
                }
            }

            ulIndex++;
        }
        else
        {
            /* Finished enumerating this key */
            if (!bAlternate)
            {
                /* Enumerate alternate sorts also */
                hKey = FUNC1( hKey, szAlternateSortsKeyName );
                bAlternate = TRUE;
                ulIndex = 0;
            }
            else
                bContinue = FALSE; /* Finished both keys */
        }

        if (!bContinue)
            break;
    }

    if (hKey)
        FUNC2( hKey );

    return TRUE;
}