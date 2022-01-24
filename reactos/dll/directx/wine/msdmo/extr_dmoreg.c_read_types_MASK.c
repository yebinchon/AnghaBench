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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int ULONG ;
struct TYPE_3__ {int /*<<< orphan*/  subtype; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  TYPE_1__ DMO_PARTIAL_MEDIATYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_MORE_DATA ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  KEY_READ ; 
 int MAX_PATH ; 
 int MSDMO_MAJOR_VERSION ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  S_FALSE ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  szToGuidFmt ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

HRESULT FUNC9(HKEY root, LPCWSTR key, ULONG *supplied, ULONG requested, DMO_PARTIAL_MEDIATYPE* types )
{
    HRESULT ret = S_OK;

    if (MSDMO_MAJOR_VERSION > 5)
    {
        DWORD len;
        LONG rc;

        len = requested * sizeof(DMO_PARTIAL_MEDIATYPE);
        rc = FUNC5(root, key, NULL, NULL, (LPBYTE) types, &len);
        ret = FUNC1(rc);

        *supplied = len / sizeof(DMO_PARTIAL_MEDIATYPE);
    }
    else
    {
        HKEY hkey;
        WCHAR szGuidKey[64];

        *supplied = 0;
        if (ERROR_SUCCESS == FUNC4(root, key, 0, KEY_READ, &hkey))
        {
          int index = 0;
          WCHAR szNextKey[MAX_PATH];
          DWORD len;
          LONG rc = ERROR_SUCCESS;

          while (rc == ERROR_SUCCESS)
          {
            len = MAX_PATH;
            rc = FUNC3(hkey, index, szNextKey, &len, NULL, NULL, NULL, NULL);
            if (rc == ERROR_SUCCESS)
            {
              HKEY subk;
              int sub_index = 0;
              LONG rcs = ERROR_SUCCESS;
              WCHAR szSubKey[MAX_PATH];

              FUNC4(hkey, szNextKey, 0, KEY_READ, &subk);
              while (rcs == ERROR_SUCCESS)
              {
                len = MAX_PATH;
                rcs = FUNC3(subk, sub_index, szSubKey, &len, NULL, NULL, NULL, NULL);
                if (rcs == ERROR_SUCCESS)
                {
                  if (*supplied >= requested)
                  {
                    /* Bailing */
                    ret = S_FALSE;
                    rc = ERROR_MORE_DATA;
                    rcs = ERROR_MORE_DATA;
                    break;
                  }

                  FUNC8(szGuidKey,szToGuidFmt,szNextKey);
                  FUNC0(szGuidKey, &types[*supplied].type);
                  FUNC8(szGuidKey,szToGuidFmt,szSubKey);
                  FUNC0(szGuidKey, &types[*supplied].subtype);
                  FUNC6("Adding type %s subtype %s at index %i\n",
                    FUNC7(&types[*supplied].type),
                    FUNC7(&types[*supplied].subtype),
                    *supplied);
                  (*supplied)++;
                }
                sub_index++;
              }
              index++;
            }
          }
          FUNC2(hkey);
        }
    }
    return ret;
}