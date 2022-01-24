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
typedef  int /*<<< orphan*/  wszValueName ;
typedef  int /*<<< orphan*/  wszSourceFilterKeyName ;
typedef  int /*<<< orphan*/  wszMinorKeyName ;
typedef  int /*<<< orphan*/  wszMajorKeyName ;
typedef  char WCHAR ;
typedef  scalar_t__ LPWSTR ;
typedef  char* LPCOLESTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  IAsyncReader ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int CHARS_IN_GUID ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ E_FAIL ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  GUID_NULL ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * HKEY_CLASSES_ROOT ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  KEY_READ ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int,char*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int,char*,int*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 char* source_filter_name ; 
 scalar_t__ FUNC19 (char const*,char*) ; 

HRESULT FUNC20(IAsyncReader * pReader, LPCOLESTR pszFileName, GUID * majorType, GUID * minorType, GUID * sourceFilter)
{
    HKEY hkeyMediaType = NULL;
    LONG lRet;
    HRESULT hr = S_OK;
    BOOL bFound = FALSE;
    static const WCHAR wszMediaType[] = {'M','e','d','i','a',' ','T','y','p','e',0};

    FUNC14("(%p, %s, %p, %p)\n", pReader, FUNC15(pszFileName), majorType, minorType);

    if(majorType)
        *majorType = GUID_NULL;
    if(minorType)
        *minorType = GUID_NULL;
    if(sourceFilter)
        *sourceFilter = GUID_NULL;

    lRet = FUNC10(HKEY_CLASSES_ROOT, wszMediaType, 0, KEY_READ, &hkeyMediaType);
    hr = FUNC5(lRet);

    if (FUNC13(hr))
    {
        DWORD indexMajor;

        for (indexMajor = 0; !bFound; indexMajor++)
        {
            HKEY hkeyMajor;
            WCHAR wszMajorKeyName[CHARS_IN_GUID];
            DWORD dwKeyNameLength = sizeof(wszMajorKeyName) / sizeof(wszMajorKeyName[0]);
            static const WCHAR wszExtensions[] = {'E','x','t','e','n','s','i','o','n','s',0};

            if (FUNC8(hkeyMediaType, indexMajor, wszMajorKeyName, &dwKeyNameLength, NULL, NULL, NULL, NULL) != ERROR_SUCCESS)
                break;
            if (FUNC10(hkeyMediaType, wszMajorKeyName, 0, KEY_READ, &hkeyMajor) != ERROR_SUCCESS)
                break;
            FUNC14("%s\n", FUNC15(wszMajorKeyName));
            if (!FUNC19(wszExtensions, wszMajorKeyName))
            {
                if (FUNC16(hkeyMajor, pszFileName, majorType, minorType, sourceFilter) == S_OK)
                    bFound = TRUE;
            }
            /* We need a reader interface to check bytes */
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

                    if (FUNC8(hkeyMajor, indexMinor, wszMinorKeyName, &dwMinorKeyNameLen, NULL, NULL, NULL, NULL) != ERROR_SUCCESS)
                        break;

                    if (FUNC10(hkeyMajor, wszMinorKeyName, 0, KEY_READ, &hkeyMinor) != ERROR_SUCCESS)
                        break;

                    FUNC14("\t%s\n", FUNC15(wszMinorKeyName));
        
                    if (FUNC11(hkeyMinor, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, &maxValueLen, NULL, NULL) != ERROR_SUCCESS)
                        break;

                    for (indexValue = 0; !bFound; indexValue++)
                    {
                        DWORD dwType;
                        WCHAR wszValueName[14]; /* longest name we should encounter will be "Source Filter" */
                        LPWSTR wszPatternString = FUNC6(FUNC4(), 0, maxValueLen);
                        DWORD dwValueNameLen = sizeof(wszValueName) / sizeof(wszValueName[0]); /* remember this is in chars */
                        DWORD dwDataLen = maxValueLen; /* remember this is in bytes */

                        if (FUNC9(hkeyMinor, indexValue, wszValueName, &dwValueNameLen, NULL, &dwType, (LPBYTE)wszPatternString, &dwDataLen) != ERROR_SUCCESS)
                        {
                            FUNC7(FUNC4(), 0, wszPatternString);
                            break;
                        }

                        if (FUNC19(wszValueName, source_filter_name)==0) {
                            FUNC7(FUNC4(), 0, wszPatternString);
                            continue;
                        }

                        /* if it is not the source filter value */
                        if (FUNC17(wszPatternString, pReader) == S_OK)
                        {
                            FUNC7(FUNC4(), 0, wszPatternString);
                            if (majorType && FUNC3(FUNC0(wszMajorKeyName, majorType)))
                                break;
                            if (minorType && FUNC3(FUNC0(wszMinorKeyName, minorType)))
                                break;
                            if (sourceFilter)
                            {
                                /* Look up the source filter key */
                                if (FUNC12(hkeyMinor, source_filter_name, NULL, NULL, (LPBYTE)wszSourceFilterKeyName, &dwSourceFilterKeyNameLen))
                                    break;
                                if (FUNC3(FUNC0(wszSourceFilterKeyName, sourceFilter)))
                                    break;
                            }
                            bFound = TRUE;
                        } else
                            FUNC7(FUNC4(), 0, wszPatternString);
                    }
                    FUNC1(hkeyMinor);
                }
            }
            FUNC1(hkeyMajor);
        }
    }
    FUNC1(hkeyMediaType);

    if (FUNC13(hr) && !bFound)
    {
        FUNC2("Media class not found\n");
        hr = E_FAIL;
    }
    else if (bFound)
    {
        FUNC14("Found file's class:\n");
	if(majorType)
		FUNC14("\tmajor = %s\n", FUNC18(majorType));
	if(minorType)
		FUNC14("\tsubtype = %s\n", FUNC18(minorType));
	if(sourceFilter)
		FUNC14("\tsource filter = %s\n", FUNC18(sourceFilter));
    }

    return hr;
}