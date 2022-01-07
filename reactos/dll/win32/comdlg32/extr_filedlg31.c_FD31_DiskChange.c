
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_4__ {int hwnd; } ;
typedef int LRESULT ;
typedef int * LPWSTR ;
typedef long LPARAM ;
typedef scalar_t__ LONG ;
typedef int HWND ;
typedef TYPE_1__ FD31_DATA ;


 int BUFFILE ;
 int BUFFILEALLOC ;
 int CB_GETCURSEL ;
 int CB_GETLBTEXT ;
 int FD31_StripEditControl (int ) ;
 int FD31_Validate (TYPE_1__ const*,int *,int ,scalar_t__,int ) ;
 int FILE_specc ;
 scalar_t__ LB_ERR ;
 scalar_t__ SendDlgItemMessageW (int ,int ,int ,scalar_t__,long) ;
 int TRUE ;
 int cmb2 ;
 int * heap_alloc (int ) ;
 int heap_free (int *) ;
 int wsprintfW (int *,int ,int ) ;

__attribute__((used)) static LRESULT FD31_DiskChange( const FD31_DATA *lfs )
{
    LONG lRet;
    HWND hWnd = lfs->hwnd;
    LPWSTR pstr;
    WCHAR diskname[BUFFILE];

    FD31_StripEditControl(hWnd);
    lRet = SendDlgItemMessageW(hWnd, cmb2, CB_GETCURSEL, 0, 0L);
    if (lRet == LB_ERR)
        return 0;
    pstr = heap_alloc(BUFFILEALLOC);
    SendDlgItemMessageW(hWnd, cmb2, CB_GETLBTEXT, lRet,
                         (LPARAM)pstr);
    wsprintfW(diskname, FILE_specc, pstr[2]);
    heap_free(pstr);

    return FD31_Validate( lfs, diskname, cmb2, lRet, TRUE );
}
