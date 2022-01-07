
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int hwnd; TYPE_1__* ofnA; TYPE_2__* ofnW; } ;
struct TYPE_7__ {scalar_t__ nFilterIndex; } ;
struct TYPE_6__ {scalar_t__ nFilterIndex; } ;
typedef int LRESULT ;
typedef scalar_t__ LPWSTR ;
typedef scalar_t__ LONG ;
typedef TYPE_3__ FD31_DATA ;


 int CB_GETCURSEL ;
 int CB_GETITEMDATA ;
 int FD31_Validate (TYPE_3__ const*,scalar_t__,int ,scalar_t__,int ) ;
 scalar_t__ LB_ERR ;
 scalar_t__ SendDlgItemMessageW (int ,int ,int ,scalar_t__,int ) ;
 int TRACE (char*,int ) ;
 int TRUE ;
 int cmb1 ;
 int debugstr_w (scalar_t__) ;

__attribute__((used)) static LRESULT FD31_FileTypeChange( const FD31_DATA *lfs )
{
    LONG lRet;
    LPWSTR pstr;

    lRet = SendDlgItemMessageW(lfs->hwnd, cmb1, CB_GETCURSEL, 0, 0);
    if (lRet == LB_ERR)
        return TRUE;
    lfs->ofnW->nFilterIndex = lRet + 1;
    if (lfs->ofnA)
        lfs->ofnA->nFilterIndex = lRet + 1;
    pstr = (LPWSTR)SendDlgItemMessageW(lfs->hwnd, cmb1, CB_GETITEMDATA, lRet, 0);
    TRACE("Selected filter : %s\n", debugstr_w(pstr));

    return FD31_Validate( lfs, pstr, cmb1, lRet, TRUE );
}
