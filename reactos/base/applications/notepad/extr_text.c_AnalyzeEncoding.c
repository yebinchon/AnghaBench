
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;
typedef int ENCODING ;
typedef int DWORD ;


 int CP_UTF8 ;
 int ENCODING_ANSI ;
 int ENCODING_UTF16BE ;
 int ENCODING_UTF16LE ;
 int ENCODING_UTF8 ;
 int IS_TEXT_UNICODE_ILLEGAL_CHARS ;
 int IS_TEXT_UNICODE_REVERSE_MASK ;
 int IS_TEXT_UNICODE_STATISTICS ;
 scalar_t__ IsTextNonZeroASCII (char const*,int) ;
 scalar_t__ IsTextUnicode (char const*,int,int*) ;
 int MB_ERR_INVALID_CHARS ;
 scalar_t__ MultiByteToWideChar (int ,int ,char const*,int,int *,int ) ;

ENCODING AnalyzeEncoding(const char *pBytes, DWORD dwSize)
{
    INT flags = IS_TEXT_UNICODE_STATISTICS;

    if (dwSize <= 1)
        return ENCODING_ANSI;

    if (IsTextNonZeroASCII(pBytes, dwSize))
    {
        return ENCODING_ANSI;
    }

    if (IsTextUnicode(pBytes, dwSize, &flags))
    {
        return ENCODING_UTF16LE;
    }

    if ((flags & IS_TEXT_UNICODE_REVERSE_MASK) && !(flags & IS_TEXT_UNICODE_ILLEGAL_CHARS))
    {
        return ENCODING_UTF16BE;
    }


    if (MultiByteToWideChar(CP_UTF8, MB_ERR_INVALID_CHARS, pBytes, dwSize, ((void*)0), 0))
    {
        return ENCODING_UTF8;
    }

    return ENCODING_ANSI;
}
