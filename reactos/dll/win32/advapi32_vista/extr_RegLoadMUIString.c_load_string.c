
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int UINT ;
typedef int* LPWSTR ;
typedef int INT ;
typedef int HRSRC ;
typedef int HINSTANCE ;
typedef int HGLOBAL ;


 int FindResourceW (int ,int ,int*) ;
 int HIWORD (int) ;
 scalar_t__ LOWORD (int) ;
 int LoadResource (int ,int ) ;
 int* LockResource (int ) ;
 int MAKEINTRESOURCEW (scalar_t__) ;
 scalar_t__ RT_STRING ;
 int memcpy (int*,int*,int) ;

__attribute__((used)) static int load_string(HINSTANCE hModule, UINT resId, LPWSTR pwszBuffer, INT cMaxChars)
{
    HGLOBAL hMemory;
    HRSRC hResource;
    WCHAR *pString;
    int idxString;


    if (HIWORD(resId) == 0xffff)
        resId = (UINT)(-((INT)resId));


    hResource = FindResourceW(hModule, MAKEINTRESOURCEW(LOWORD(resId >> 4) + 1), (LPWSTR)RT_STRING);
    if (!hResource) return 0;
    hMemory = LoadResource(hModule, hResource);
    if (!hMemory) return 0;
    pString = LockResource(hMemory);


    idxString = resId & 0xf;
    while (idxString--) pString += *pString + 1;


    if (!pwszBuffer) return *pString;


    cMaxChars = (*pString < cMaxChars) ? *pString : (cMaxChars - 1);
    if (cMaxChars >= 0)
    {
        memcpy(pwszBuffer, pString+1, cMaxChars * sizeof(WCHAR));
        pwszBuffer[cMaxChars] = L'\0';
    }

    return cMaxChars;
}
