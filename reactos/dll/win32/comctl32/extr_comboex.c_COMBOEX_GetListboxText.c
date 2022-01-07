
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_5__ {scalar_t__ unicode; } ;
typedef scalar_t__* LPWSTR ;
typedef scalar_t__* LPSTR ;
typedef int LPCWSTR ;
typedef int INT_PTR ;
typedef TYPE_1__ COMBOEX_INFO ;
typedef int CBE_ITEMDATA ;


 int * COMBOEX_FindItem (TYPE_1__*,int ) ;
 int COMBOEX_GetText (TYPE_1__*,int *) ;
 int CP_ACP ;
 scalar_t__ WideCharToMultiByte (int ,int ,int ,int,scalar_t__*,int,int *,int *) ;
 int lstrcpyW (scalar_t__*,int ) ;
 scalar_t__ lstrlenW (int ) ;

__attribute__((used)) static UINT COMBOEX_GetListboxText(COMBOEX_INFO *infoPtr, INT_PTR n, LPWSTR buf)
{
    CBE_ITEMDATA *item;
    LPCWSTR str;

    item = COMBOEX_FindItem(infoPtr, n);
    if (!item)
        return 0;

    str = COMBOEX_GetText(infoPtr, item);
    if (!str)
    {
        if (buf)
        {
            if (infoPtr->unicode)
                buf[0] = 0;
            else
                *((LPSTR)buf) = 0;
        }
        return 0;
    }

    if (infoPtr->unicode)
    {
        if (buf)
            lstrcpyW(buf, str);
        return lstrlenW(str);
    }
    else
    {
        UINT r;
        r = WideCharToMultiByte(CP_ACP, 0, str, -1, (LPSTR)buf, 0x40000000, ((void*)0), ((void*)0));
        if (r) r--;
        return r;
    }
}
