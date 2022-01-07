
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int * LPWSTR ;
typedef int * LPCSTR ;
typedef int INT ;
typedef int DWORD ;


 int ERROR_INVALID_PARAMETER ;
 int SetLastError (int ) ;
 int strlen (int *) ;

INT
__MultiByteToWideChar(UINT page, DWORD flags, LPCSTR src, INT srclen,
                                LPWSTR dst, INT dstlen )
{
    int i;

    if (!src || !srclen || (!dst && dstlen))
    {
        SetLastError( ERROR_INVALID_PARAMETER );
        return 0;
    }

    if (srclen < 0) srclen = strlen(src) + 1;

    if(!dstlen)
        return srclen;

    for(i=0; i<srclen && i<dstlen; i++)
        dst[i] = src[i];

    return i;
}
