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
typedef  int /*<<< orphan*/  ft ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_11__ {TYPE_1__* rgBlob; } ;
struct TYPE_10__ {int /*<<< orphan*/  ExpireTime; int /*<<< orphan*/  lpszLocalFileName; } ;
struct TYPE_9__ {int /*<<< orphan*/  cbData; int /*<<< orphan*/  pbData; } ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  TYPE_2__ INTERNET_CACHE_ENTRY_INFOW ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  FILETIME ;
typedef  int DWORD ;
typedef  TYPE_3__ CRYPT_BLOB_ARRAY ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_ENTRY_EXPTIME_FC ; 
 int CRYPT_STICKY_CACHE_RETRIEVAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,TYPE_2__*,int*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int NORMAL_CACHE_ENTRY ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int STICKY_CACHE_ENTRY ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC16(LPCWSTR pszURL, const CRYPT_BLOB_ARRAY *pObject,
 DWORD dwRetrievalFlags, FILETIME expires)
{
    WCHAR cacheFileName[MAX_PATH];
    HANDLE hCacheFile;
    DWORD size = 0, entryType;
    FILETIME ft;

    FUNC11(pszURL, NULL, &size);
    if (FUNC9() == ERROR_INSUFFICIENT_BUFFER)
    {
        INTERNET_CACHE_ENTRY_INFOW *info = FUNC5(size);

        if (!info)
        {
            FUNC8("out of memory\n");
            return;
        }

        if (FUNC11(pszURL, info, &size))
        {
            FUNC14(cacheFileName, info->lpszLocalFileName);
            /* Check if the existing cache entry is up to date.  If it isn't,
             * remove the existing cache entry, and create a new one with the
             * new value.
             */
            FUNC10(&ft);
            if (FUNC2(&info->ExpireTime, &ft) < 0)
            {
                FUNC7(pszURL);
            }
            else
            {
                info->ExpireTime = expires;
                FUNC12(pszURL, info, CACHE_ENTRY_EXPTIME_FC);
                FUNC6(info);
                return;
            }
        }
        FUNC6(info);
    }

    if (!FUNC4(pszURL, pObject->rgBlob[0].cbData, NULL, cacheFileName, 0))
        return;

    hCacheFile = FUNC3(cacheFileName, GENERIC_WRITE, 0,
            NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
    if(hCacheFile == INVALID_HANDLE_VALUE)
        return;

    FUNC13(hCacheFile, pObject->rgBlob[0].pbData,
            pObject->rgBlob[0].cbData, &size, NULL);
    FUNC0(hCacheFile);

    if (!(dwRetrievalFlags & CRYPT_STICKY_CACHE_RETRIEVAL))
        entryType = NORMAL_CACHE_ENTRY;
    else
        entryType = STICKY_CACHE_ENTRY;
    FUNC15(&ft, 0, sizeof(ft));
    FUNC1(pszURL, cacheFileName, expires, ft, entryType,
            NULL, 0, NULL, NULL);
}