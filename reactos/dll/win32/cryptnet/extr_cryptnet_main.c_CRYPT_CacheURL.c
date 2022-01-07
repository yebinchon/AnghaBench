
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ft ;
typedef int WCHAR ;
struct TYPE_11__ {TYPE_1__* rgBlob; } ;
struct TYPE_10__ {int ExpireTime; int lpszLocalFileName; } ;
struct TYPE_9__ {int cbData; int pbData; } ;
typedef int LPCWSTR ;
typedef TYPE_2__ INTERNET_CACHE_ENTRY_INFOW ;
typedef scalar_t__ HANDLE ;
typedef int FILETIME ;
typedef int DWORD ;
typedef TYPE_3__ CRYPT_BLOB_ARRAY ;


 int CACHE_ENTRY_EXPTIME_FC ;
 int CRYPT_STICKY_CACHE_RETRIEVAL ;
 int CloseHandle (scalar_t__) ;
 int CommitUrlCacheEntryW (int ,int *,int ,int ,int,int *,int ,int *,int *) ;
 scalar_t__ CompareFileTime (int *,int *) ;
 scalar_t__ CreateFileW (int *,int ,int ,int *,int ,int ,int *) ;
 int CreateUrlCacheEntryW (int ,int ,int *,int *,int ) ;
 TYPE_2__* CryptMemAlloc (int) ;
 int CryptMemFree (TYPE_2__*) ;
 int DeleteUrlCacheEntryW (int ) ;
 int ERR (char*) ;
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_WRITE ;
 scalar_t__ GetLastError () ;
 int GetSystemTimeAsFileTime (int *) ;
 scalar_t__ GetUrlCacheEntryInfoW (int ,TYPE_2__*,int*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int NORMAL_CACHE_ENTRY ;
 int OPEN_EXISTING ;
 int STICKY_CACHE_ENTRY ;
 int SetUrlCacheEntryInfoW (int ,TYPE_2__*,int ) ;
 int WriteFile (scalar_t__,int ,int ,int*,int *) ;
 int lstrcpyW (int *,int ) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void CRYPT_CacheURL(LPCWSTR pszURL, const CRYPT_BLOB_ARRAY *pObject,
 DWORD dwRetrievalFlags, FILETIME expires)
{
    WCHAR cacheFileName[MAX_PATH];
    HANDLE hCacheFile;
    DWORD size = 0, entryType;
    FILETIME ft;

    GetUrlCacheEntryInfoW(pszURL, ((void*)0), &size);
    if (GetLastError() == ERROR_INSUFFICIENT_BUFFER)
    {
        INTERNET_CACHE_ENTRY_INFOW *info = CryptMemAlloc(size);

        if (!info)
        {
            ERR("out of memory\n");
            return;
        }

        if (GetUrlCacheEntryInfoW(pszURL, info, &size))
        {
            lstrcpyW(cacheFileName, info->lpszLocalFileName);




            GetSystemTimeAsFileTime(&ft);
            if (CompareFileTime(&info->ExpireTime, &ft) < 0)
            {
                DeleteUrlCacheEntryW(pszURL);
            }
            else
            {
                info->ExpireTime = expires;
                SetUrlCacheEntryInfoW(pszURL, info, CACHE_ENTRY_EXPTIME_FC);
                CryptMemFree(info);
                return;
            }
        }
        CryptMemFree(info);
    }

    if (!CreateUrlCacheEntryW(pszURL, pObject->rgBlob[0].cbData, ((void*)0), cacheFileName, 0))
        return;

    hCacheFile = CreateFileW(cacheFileName, GENERIC_WRITE, 0,
            ((void*)0), OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    if(hCacheFile == INVALID_HANDLE_VALUE)
        return;

    WriteFile(hCacheFile, pObject->rgBlob[0].pbData,
            pObject->rgBlob[0].cbData, &size, ((void*)0));
    CloseHandle(hCacheFile);

    if (!(dwRetrievalFlags & CRYPT_STICKY_CACHE_RETRIEVAL))
        entryType = NORMAL_CACHE_ENTRY;
    else
        entryType = STICKY_CACHE_ENTRY;
    memset(&ft, 0, sizeof(ft));
    CommitUrlCacheEntryW(pszURL, cacheFileName, expires, ft, entryType,
            ((void*)0), 0, ((void*)0), ((void*)0));
}
