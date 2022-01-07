
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__* LPWSTR ;
typedef int LPSTR ;
typedef scalar_t__ LPCSTR ;
typedef int INT ;
typedef int DWORD ;


 int RtlMultiByteToUnicodeN (scalar_t__*,int,int*,int ,int) ;
 int RtlOemToUnicodeN (scalar_t__*,int,int*,int ,int) ;
 scalar_t__ bIsFileApiAnsi ;
 int strlen (scalar_t__) ;

DWORD
FilenameA2W_N(
   LPWSTR dest,
   INT destlen,
   LPCSTR src,
   INT srclen
   )
{
    DWORD ret;

    if (srclen < 0) srclen = strlen( src ) + 1;

    if (bIsFileApiAnsi)
        RtlMultiByteToUnicodeN( dest, destlen* sizeof(WCHAR), &ret, (LPSTR)src, srclen );
    else
        RtlOemToUnicodeN( dest, destlen* sizeof(WCHAR), &ret, (LPSTR)src, srclen );

    if (ret) dest[(ret/sizeof(WCHAR))-1]=0;

    return ret/sizeof(WCHAR);
}
