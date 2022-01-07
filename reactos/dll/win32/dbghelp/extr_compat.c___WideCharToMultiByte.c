
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int* LPSTR ;
typedef int* LPCWSTR ;
typedef int LPCSTR ;
typedef int INT ;
typedef int DWORD ;
typedef int BOOL ;


 int ERROR_INVALID_PARAMETER ;
 int FALSE ;
 int SetLastError (int ) ;
 int strlenW (int*) ;

INT
__WideCharToMultiByte(UINT page, DWORD flags, LPCWSTR src, INT srclen,
                                LPSTR dst, INT dstlen, LPCSTR defchar, BOOL *used )
{
    int i;

    if (!src || !srclen || (!dst && dstlen))
    {
        SetLastError( ERROR_INVALID_PARAMETER );
        return 0;
    }

    if (srclen < 0) srclen = strlenW(src) + 1;

    if(!dstlen)
        return srclen;

    for(i=0; i<srclen && i<dstlen; i++)
        dst[i] = src[i] & 0xFF;

    if (used) *used = FALSE;

    return i;
}
