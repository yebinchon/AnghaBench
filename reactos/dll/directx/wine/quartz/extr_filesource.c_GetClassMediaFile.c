
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wszValueName ;
typedef int wszSourceFilterKeyName ;
typedef int wszMinorKeyName ;
typedef int wszMajorKeyName ;
typedef char WCHAR ;
typedef scalar_t__ LPWSTR ;
typedef char* LPCOLESTR ;
typedef int LPBYTE ;
typedef scalar_t__ LONG ;
typedef int IAsyncReader ;
typedef scalar_t__ HRESULT ;
typedef int * HKEY ;
typedef int GUID ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int CHARS_IN_GUID ;
 int CLSIDFromString (char*,int *) ;
 int CloseHandle (int *) ;
 int ERR (char*) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ E_FAIL ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ FALSE ;
 int GUID_NULL ;
 int GetProcessHeap () ;
 int * HKEY_CLASSES_ROOT ;
 scalar_t__ HRESULT_FROM_WIN32 (scalar_t__) ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,scalar_t__) ;
 int KEY_READ ;
 scalar_t__ RegEnumKeyExW (int *,int,char*,int*,int *,int *,int *,int *) ;
 scalar_t__ RegEnumValueW (int *,int,char*,int*,int *,int*,int ,int*) ;
 scalar_t__ RegOpenKeyExW (int *,char const*,int ,int ,int **) ;
 scalar_t__ RegQueryInfoKeyW (int *,int *,int *,int *,int *,int *,int *,int *,int *,int*,int *,int *) ;
 scalar_t__ RegQueryValueExW (int *,char*,int *,int *,int ,int*) ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 int TRACE (char*,...) ;
 scalar_t__ TRUE ;
 int debugstr_w (char*) ;
 scalar_t__ process_extensions (int *,char*,int *,int *,int *) ;
 scalar_t__ process_pattern_string (scalar_t__,int *) ;
 int qzdebugstr_guid (int *) ;
 char* source_filter_name ;
 scalar_t__ strcmpW (char const*,char*) ;

HRESULT GetClassMediaFile(IAsyncReader * pReader, LPCOLESTR pszFileName, GUID * majorType, GUID * minorType, GUID * sourceFilter)
{
    HKEY hkeyMediaType = ((void*)0);
    LONG lRet;
    HRESULT hr = S_OK;
    BOOL bFound = FALSE;
    static const WCHAR wszMediaType[] = {'M','e','d','i','a',' ','T','y','p','e',0};

    TRACE("(%p, %s, %p, %p)\n", pReader, debugstr_w(pszFileName), majorType, minorType);

    if(majorType)
        *majorType = GUID_NULL;
    if(minorType)
        *minorType = GUID_NULL;
    if(sourceFilter)
        *sourceFilter = GUID_NULL;

    lRet = RegOpenKeyExW(HKEY_CLASSES_ROOT, wszMediaType, 0, KEY_READ, &hkeyMediaType);
    hr = HRESULT_FROM_WIN32(lRet);

    if (SUCCEEDED(hr))
    {
        DWORD indexMajor;

        for (indexMajor = 0; !bFound; indexMajor++)
        {
            HKEY hkeyMajor;
            WCHAR wszMajorKeyName[CHARS_IN_GUID];
            DWORD dwKeyNameLength = sizeof(wszMajorKeyName) / sizeof(wszMajorKeyName[0]);
            static const WCHAR wszExtensions[] = {'E','x','t','e','n','s','i','o','n','s',0};

            if (RegEnumKeyExW(hkeyMediaType, indexMajor, wszMajorKeyName, &dwKeyNameLength, ((void*)0), ((void*)0), ((void*)0), ((void*)0)) != ERROR_SUCCESS)
                break;
            if (RegOpenKeyExW(hkeyMediaType, wszMajorKeyName, 0, KEY_READ, &hkeyMajor) != ERROR_SUCCESS)
                break;
            TRACE("%s\n", debugstr_w(wszMajorKeyName));
            if (!strcmpW(wszExtensions, wszMajorKeyName))
            {
                if (process_extensions(hkeyMajor, pszFileName, majorType, minorType, sourceFilter) == S_OK)
                    bFound = TRUE;
            }

            else if (pReader)
            {
                DWORD indexMinor;

                for (indexMinor = 0; !bFound; indexMinor++)
                {
                    HKEY hkeyMinor;
                    WCHAR wszMinorKeyName[CHARS_IN_GUID];
                    DWORD dwMinorKeyNameLen = sizeof(wszMinorKeyName) / sizeof(wszMinorKeyName[0]);
                    WCHAR wszSourceFilterKeyName[CHARS_IN_GUID];
                    DWORD dwSourceFilterKeyNameLen = sizeof(wszSourceFilterKeyName);
                    DWORD maxValueLen;
                    DWORD indexValue;

                    if (RegEnumKeyExW(hkeyMajor, indexMinor, wszMinorKeyName, &dwMinorKeyNameLen, ((void*)0), ((void*)0), ((void*)0), ((void*)0)) != ERROR_SUCCESS)
                        break;

                    if (RegOpenKeyExW(hkeyMajor, wszMinorKeyName, 0, KEY_READ, &hkeyMinor) != ERROR_SUCCESS)
                        break;

                    TRACE("\t%s\n", debugstr_w(wszMinorKeyName));

                    if (RegQueryInfoKeyW(hkeyMinor, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), &maxValueLen, ((void*)0), ((void*)0)) != ERROR_SUCCESS)
                        break;

                    for (indexValue = 0; !bFound; indexValue++)
                    {
                        DWORD dwType;
                        WCHAR wszValueName[14];
                        LPWSTR wszPatternString = HeapAlloc(GetProcessHeap(), 0, maxValueLen);
                        DWORD dwValueNameLen = sizeof(wszValueName) / sizeof(wszValueName[0]);
                        DWORD dwDataLen = maxValueLen;

                        if (RegEnumValueW(hkeyMinor, indexValue, wszValueName, &dwValueNameLen, ((void*)0), &dwType, (LPBYTE)wszPatternString, &dwDataLen) != ERROR_SUCCESS)
                        {
                            HeapFree(GetProcessHeap(), 0, wszPatternString);
                            break;
                        }

                        if (strcmpW(wszValueName, source_filter_name)==0) {
                            HeapFree(GetProcessHeap(), 0, wszPatternString);
                            continue;
                        }


                        if (process_pattern_string(wszPatternString, pReader) == S_OK)
                        {
                            HeapFree(GetProcessHeap(), 0, wszPatternString);
                            if (majorType && FAILED(CLSIDFromString(wszMajorKeyName, majorType)))
                                break;
                            if (minorType && FAILED(CLSIDFromString(wszMinorKeyName, minorType)))
                                break;
                            if (sourceFilter)
                            {

                                if (RegQueryValueExW(hkeyMinor, source_filter_name, ((void*)0), ((void*)0), (LPBYTE)wszSourceFilterKeyName, &dwSourceFilterKeyNameLen))
                                    break;
                                if (FAILED(CLSIDFromString(wszSourceFilterKeyName, sourceFilter)))
                                    break;
                            }
                            bFound = TRUE;
                        } else
                            HeapFree(GetProcessHeap(), 0, wszPatternString);
                    }
                    CloseHandle(hkeyMinor);
                }
            }
            CloseHandle(hkeyMajor);
        }
    }
    CloseHandle(hkeyMediaType);

    if (SUCCEEDED(hr) && !bFound)
    {
        ERR("Media class not found\n");
        hr = E_FAIL;
    }
    else if (bFound)
    {
        TRACE("Found file's class:\n");
 if(majorType)
  TRACE("\tmajor = %s\n", qzdebugstr_guid(majorType));
 if(minorType)
  TRACE("\tsubtype = %s\n", qzdebugstr_guid(minorType));
 if(sourceFilter)
  TRACE("\tsource filter = %s\n", qzdebugstr_guid(sourceFilter));
    }

    return hr;
}
