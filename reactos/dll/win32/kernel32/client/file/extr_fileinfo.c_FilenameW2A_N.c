
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int LPWSTR ;
typedef scalar_t__* LPSTR ;
typedef scalar_t__ LPCWSTR ;
typedef int INT ;
typedef int DWORD ;


 int RtlUnicodeToMultiByteN (scalar_t__*,int,int*,int ,int) ;
 int RtlUnicodeToOemN (scalar_t__*,int,int*,int ,int) ;
 scalar_t__ bIsFileApiAnsi ;
 int wcslen (scalar_t__) ;

DWORD
FilenameW2A_N(
   LPSTR dest,
   INT destlen,
   LPCWSTR src,
   INT srclen
   )
{
    DWORD ret;

    if (srclen < 0) srclen = wcslen( src ) + 1;

    if (bIsFileApiAnsi)
        RtlUnicodeToMultiByteN( dest, destlen, &ret, (LPWSTR) src, srclen * sizeof(WCHAR));
    else
        RtlUnicodeToOemN( dest, destlen, &ret, (LPWSTR) src, srclen * sizeof(WCHAR) );

    if (ret) dest[ret-1]=0;

    return ret;
}
