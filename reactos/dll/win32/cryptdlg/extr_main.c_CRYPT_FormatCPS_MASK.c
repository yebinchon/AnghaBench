#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_5__ {int cbData; scalar_t__ pbData; } ;
struct TYPE_6__ {TYPE_1__ Value; } ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int DWORD ;
typedef  TYPE_2__ CERT_NAME_VALUE ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPT_DECODE_ALLOC_FLAG ; 
 int CRYPT_FORMAT_STR_MULTI_LINE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__**,int*) ; 
 int /*<<< orphan*/  ERROR_MORE_DATA ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  X509_UNICODE_ANY_STRING ; 
 int /*<<< orphan*/  commaSep ; 
 int /*<<< orphan*/  crlf ; 
 int /*<<< orphan*/  indent ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC5(DWORD dwCertEncodingType,
 DWORD dwFormatStrType, const BYTE *pbEncoded, DWORD cbEncoded,
 WCHAR *str, DWORD *pcchStr)
{
    BOOL ret;
    DWORD size, charsNeeded = 1;
    CERT_NAME_VALUE *cpsValue;

    if ((ret = FUNC0(dwCertEncodingType, X509_UNICODE_ANY_STRING,
     pbEncoded, cbEncoded, CRYPT_DECODE_ALLOC_FLAG, NULL, &cpsValue, &size)))
    {
        LPCWSTR sep;
        DWORD sepLen;

        if (dwFormatStrType & CRYPT_FORMAT_STR_MULTI_LINE)
            sep = crlf;
        else
            sep = commaSep;

        sepLen = FUNC4(sep);

        if (dwFormatStrType & CRYPT_FORMAT_STR_MULTI_LINE)
        {
            charsNeeded += 3 * FUNC4(indent);
            if (str && *pcchStr >= charsNeeded)
            {
                FUNC3(str, indent);
                str += FUNC4(indent);
                FUNC3(str, indent);
                str += FUNC4(indent);
                FUNC3(str, indent);
                str += FUNC4(indent);
            }
        }
        charsNeeded += cpsValue->Value.cbData / sizeof(WCHAR);
        if (str && *pcchStr >= charsNeeded)
        {
            FUNC3(str, (LPWSTR)cpsValue->Value.pbData);
            str += cpsValue->Value.cbData / sizeof(WCHAR);
        }
        charsNeeded += sepLen;
        if (str && *pcchStr >= charsNeeded)
        {
            FUNC3(str, sep);
            str += sepLen;
        }
        FUNC1(cpsValue);
        if (!str)
            *pcchStr = charsNeeded;
        else if (*pcchStr < charsNeeded)
        {
            *pcchStr = charsNeeded;
            FUNC2(ERROR_MORE_DATA);
            ret = FALSE;
        }
        else
            *pcchStr = charsNeeded;
    }
    return ret;
}