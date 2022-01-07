
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_5__ {int cbData; scalar_t__ pbData; } ;
struct TYPE_6__ {TYPE_1__ Value; } ;
typedef int LPWSTR ;
typedef int LPCWSTR ;
typedef int DWORD ;
typedef TYPE_2__ CERT_NAME_VALUE ;
typedef int BYTE ;
typedef int BOOL ;


 int CRYPT_DECODE_ALLOC_FLAG ;
 int CRYPT_FORMAT_STR_MULTI_LINE ;
 int CryptDecodeObjectEx (int,int ,int const*,int,int ,int *,TYPE_2__**,int*) ;
 int ERROR_MORE_DATA ;
 int FALSE ;
 int LocalFree (TYPE_2__*) ;
 int SetLastError (int ) ;
 int X509_UNICODE_ANY_STRING ;
 int commaSep ;
 int crlf ;
 int indent ;
 int lstrcpyW (int *,int ) ;
 int lstrlenW (int ) ;

__attribute__((used)) static BOOL CRYPT_FormatCPS(DWORD dwCertEncodingType,
 DWORD dwFormatStrType, const BYTE *pbEncoded, DWORD cbEncoded,
 WCHAR *str, DWORD *pcchStr)
{
    BOOL ret;
    DWORD size, charsNeeded = 1;
    CERT_NAME_VALUE *cpsValue;

    if ((ret = CryptDecodeObjectEx(dwCertEncodingType, X509_UNICODE_ANY_STRING,
     pbEncoded, cbEncoded, CRYPT_DECODE_ALLOC_FLAG, ((void*)0), &cpsValue, &size)))
    {
        LPCWSTR sep;
        DWORD sepLen;

        if (dwFormatStrType & CRYPT_FORMAT_STR_MULTI_LINE)
            sep = crlf;
        else
            sep = commaSep;

        sepLen = lstrlenW(sep);

        if (dwFormatStrType & CRYPT_FORMAT_STR_MULTI_LINE)
        {
            charsNeeded += 3 * lstrlenW(indent);
            if (str && *pcchStr >= charsNeeded)
            {
                lstrcpyW(str, indent);
                str += lstrlenW(indent);
                lstrcpyW(str, indent);
                str += lstrlenW(indent);
                lstrcpyW(str, indent);
                str += lstrlenW(indent);
            }
        }
        charsNeeded += cpsValue->Value.cbData / sizeof(WCHAR);
        if (str && *pcchStr >= charsNeeded)
        {
            lstrcpyW(str, (LPWSTR)cpsValue->Value.pbData);
            str += cpsValue->Value.cbData / sizeof(WCHAR);
        }
        charsNeeded += sepLen;
        if (str && *pcchStr >= charsNeeded)
        {
            lstrcpyW(str, sep);
            str += sepLen;
        }
        LocalFree(cpsValue);
        if (!str)
            *pcchStr = charsNeeded;
        else if (*pcchStr < charsNeeded)
        {
            *pcchStr = charsNeeded;
            SetLastError(ERROR_MORE_DATA);
            ret = FALSE;
        }
        else
            *pcchStr = charsNeeded;
    }
    return ret;
}
