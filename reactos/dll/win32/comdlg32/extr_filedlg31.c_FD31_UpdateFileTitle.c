
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int hwnd; TYPE_2__* ofnA; TYPE_1__* ofnW; } ;
struct TYPE_6__ {int nMaxFileTitle; scalar_t__* lpstrFileTitle; } ;
struct TYPE_5__ {int * lpstrFileTitle; } ;
typedef TYPE_1__* LPOPENFILENAMEW ;
typedef TYPE_2__* LPOPENFILENAMEA ;
typedef int LPARAM ;
typedef int LONG ;
typedef TYPE_3__ FD31_DATA ;


 int CP_ACP ;
 int LB_GETCURSEL ;
 int LB_GETTEXT ;
 int SendDlgItemMessageW (int ,int ,int ,int ,int ) ;
 int WideCharToMultiByte (int ,int ,int *,int,scalar_t__*,int,int *,int *) ;
 int lst1 ;

__attribute__((used)) static void FD31_UpdateFileTitle(const FD31_DATA *lfs)
{
  LONG lRet;
  LPOPENFILENAMEW ofnW = lfs->ofnW;
  LPOPENFILENAMEA ofnA = lfs->ofnA;

  if (ofnW->lpstrFileTitle != ((void*)0))
  {
    lRet = SendDlgItemMessageW(lfs->hwnd, lst1, LB_GETCURSEL, 0, 0);
    SendDlgItemMessageW(lfs->hwnd, lst1, LB_GETTEXT, lRet,
                             (LPARAM)ofnW->lpstrFileTitle );
    if (ofnA)
    {
        if (!WideCharToMultiByte( CP_ACP, 0, ofnW->lpstrFileTitle, -1,
                                  ofnA->lpstrFileTitle, ofnA->nMaxFileTitle, ((void*)0), ((void*)0) ))
            ofnA->lpstrFileTitle[ofnA->nMaxFileTitle-1] = 0;
    }
  }
}
