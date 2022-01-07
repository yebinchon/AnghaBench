
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hInstance; } ;
typedef int TCHAR ;
typedef int LPCTSTR ;
typedef int HWND ;
typedef int DWORD ;


 int ARRAY_SIZE (int *) ;
 TYPE_1__ Globals ;
 int LoadString (int ,int,int *,int ) ;
 int MAX_STRING_LEN ;
 int MB_ICONEXCLAMATION ;
 int MB_ICONMASK ;
 int MessageBox (int ,int *,int *,int) ;
 int STRING_ERROR ;
 int STRING_NOTEPAD ;
 int _sntprintf (int *,int ,int *,int ) ;

int DIALOG_StringMsgBox(HWND hParent, int formatId, LPCTSTR szString, DWORD dwFlags)
{
    TCHAR szMessage[MAX_STRING_LEN];
    TCHAR szResource[MAX_STRING_LEN];


    LoadString(Globals.hInstance, formatId, szResource, ARRAY_SIZE(szResource));
    _sntprintf(szMessage, ARRAY_SIZE(szMessage), szResource, szString);


    if ((dwFlags & MB_ICONMASK) == MB_ICONEXCLAMATION)
        LoadString(Globals.hInstance, STRING_ERROR, szResource, ARRAY_SIZE(szResource));
    else
        LoadString(Globals.hInstance, STRING_NOTEPAD, szResource, ARRAY_SIZE(szResource));




    return MessageBox(hParent, szMessage, szResource, dwFlags);
}
