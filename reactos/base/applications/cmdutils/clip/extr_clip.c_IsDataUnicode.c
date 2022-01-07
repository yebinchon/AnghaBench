
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPVOID ;
typedef int HGLOBAL ;
typedef int BOOL ;


 int GlobalLock (int ) ;
 int GlobalSize (int ) ;
 int GlobalUnlock (int ) ;
 int IsTextUnicode (int ,int ,int *) ;

__attribute__((used)) static BOOL IsDataUnicode(HGLOBAL hGlobal)
{
    BOOL bReturn;
    LPVOID lpBuffer;

    lpBuffer = GlobalLock(hGlobal);
    bReturn = IsTextUnicode(lpBuffer, GlobalSize(hGlobal), ((void*)0));
    GlobalUnlock(hGlobal);

    return bReturn;
}
