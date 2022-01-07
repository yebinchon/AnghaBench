
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lbselchstring; scalar_t__ hook; int hwnd; } ;
typedef int LRESULT ;
typedef scalar_t__ LPWSTR ;
typedef int LPARAM ;
typedef scalar_t__ LONG ;
typedef int HWND ;
typedef TYPE_1__ FD31_DATA ;


 int BUFFILEALLOC ;
 int CD_LBSELCHANGE ;
 int FD31_CallWindowProc (TYPE_1__ const*,int ,int ,int ) ;
 scalar_t__ LB_ERR ;
 int LB_GETCURSEL ;
 int LB_GETTEXT ;
 int MAKELONG (scalar_t__,int ) ;
 scalar_t__ SendDlgItemMessageW (int ,int ,int ,scalar_t__,int ) ;
 int SetDlgItemTextW (int ,int ,scalar_t__) ;
 int TRUE ;
 int edt1 ;
 scalar_t__ heap_alloc (int ) ;
 int heap_free (scalar_t__) ;
 int lst1 ;

__attribute__((used)) static LRESULT FD31_FileListSelect( const FD31_DATA *lfs )
{
    LONG lRet;
    HWND hWnd = lfs->hwnd;
    LPWSTR pstr;

    lRet = SendDlgItemMessageW(lfs->hwnd, lst1, LB_GETCURSEL, 0, 0);
    if (lRet == LB_ERR)
        return TRUE;


    if ((pstr = heap_alloc(BUFFILEALLOC)))
    {
        SendDlgItemMessageW(hWnd, lst1, LB_GETTEXT, lRet,
                       (LPARAM)pstr);
        SetDlgItemTextW( hWnd, edt1, pstr );
        heap_free(pstr);
    }
    if (lfs->hook)
    {
        FD31_CallWindowProc(lfs, lfs->lbselchstring, lst1,
                           MAKELONG(lRet,CD_LBSELCHANGE));
    }


    return TRUE;
}
