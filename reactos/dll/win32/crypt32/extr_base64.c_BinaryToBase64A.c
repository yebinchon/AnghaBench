
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const* LPSTR ;
typedef char const* LPCSTR ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 char* CERT_HEADER ;
 char* CERT_REQUEST_HEADER ;
 char* CERT_REQUEST_TRAILER ;
 char* CERT_TRAILER ;




 int CRYPT_STRING_NOCR ;
 int CRYPT_STRING_NOCRLF ;
 int ERROR_INSUFFICIENT_BUFFER ;
 int FALSE ;
 int SetLastError (int ) ;
 int TRUE ;
 char* X509_HEADER ;
 char* X509_TRAILER ;
 int encodeBase64A (int const*,int,char const*,char const*,int*) ;
 int strcpy (char const*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static BOOL BinaryToBase64A(const BYTE *pbBinary,
 DWORD cbBinary, DWORD dwFlags, LPSTR pszString, DWORD *pcchString)
{
    static const char crlf[] = "\r\n", lf[] = "\n";
    BOOL ret = TRUE;
    LPCSTR header = ((void*)0), trailer = ((void*)0), sep;
    DWORD charsNeeded;

    if (dwFlags & CRYPT_STRING_NOCR)
        sep = lf;
    else if (dwFlags & CRYPT_STRING_NOCRLF)
        sep = "";
    else
        sep = crlf;
    switch (dwFlags & 0x0fffffff)
    {
    case 131:

        break;
    case 130:
        header = CERT_HEADER;
        trailer = CERT_TRAILER;
        break;
    case 129:
        header = CERT_REQUEST_HEADER;
        trailer = CERT_REQUEST_TRAILER;
        break;
    case 128:
        header = X509_HEADER;
        trailer = X509_TRAILER;
        break;
    }

    charsNeeded = 0;
    encodeBase64A(pbBinary, cbBinary, sep, ((void*)0), &charsNeeded);
    if (header)
        charsNeeded += strlen(header) + strlen(sep);
    if (trailer)
        charsNeeded += strlen(trailer) + strlen(sep);

    if (pszString)
    {
        if (charsNeeded <= *pcchString)
        {
            LPSTR ptr = pszString;
            DWORD size = charsNeeded;

            if (header)
            {
                strcpy(ptr, header);
                ptr += strlen(ptr);
                strcpy(ptr, sep);
                ptr += strlen(sep);
            }
            encodeBase64A(pbBinary, cbBinary, sep, ptr, &size);
            ptr += size - 1;
            if (trailer)
            {
                strcpy(ptr, trailer);
                ptr += strlen(ptr);
               strcpy(ptr, sep);
            }
            *pcchString = charsNeeded - 1;
        }
        else
        {
            *pcchString = charsNeeded;
            SetLastError(ERROR_INSUFFICIENT_BUFFER);
            ret = FALSE;
        }
    }
    else
        *pcchString = charsNeeded;

    return ret;
}
