
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_10__ {int Flags; int hwndOwner; int * lpstrReplaceWith; int * lpstrFindWhat; int wReplaceWithLen; int wFindWhatLen; } ;
struct TYPE_9__ {TYPE_2__* fra; TYPE_1__* frw; } ;
struct TYPE_11__ {TYPE_4__ fr; TYPE_3__ user_fr; } ;
struct TYPE_8__ {int Flags; int lpstrReplaceWith; int lpstrFindWhat; } ;
struct TYPE_7__ {int lpstrReplaceWith; int lpstrFindWhat; } ;
typedef int LPARAM ;
typedef int HWND ;
typedef int DWORD ;
typedef TYPE_5__ COMDLG32_FR_Data ;
typedef int BOOL ;


 int BN_CLICKED ;
 int COMDLG32_FR_GetFlags (int ) ;
 int CP_ACP ;
 int DestroyWindow (int ) ;
 int EN_CHANGE ;
 int EnableWindow (int ,int) ;
 int FR_DIALOGTERM ;
 int FR_DOWN ;
 int FR_FINDNEXT ;
 int FR_MASK ;
 int FR_REPLACE ;
 int FR_REPLACEALL ;
 int FR_WINE_REPLACE ;
 int FR_WINE_UNICODE ;
 int FindReplaceMessage ;
 int GetDlgItem (int ,int const) ;
 int GetDlgItemTextA (int ,int,int *,int ) ;
 int HelpMessage ;


 int MultiByteToWideChar (int ,int ,int *,int,int ,int) ;
 scalar_t__ SendDlgItemMessageA (int ,int,int ,int ,int ) ;
 int SendMessageA (int ,int ,int ,int ) ;
 int WM_GETTEXTLENGTH ;
 int edt1 ;
 int edt2 ;



 int strcpy (int ,int *) ;

__attribute__((used)) static void COMDLG32_FR_HandleWMCommand(HWND hDlgWnd, COMDLG32_FR_Data *pData, int Id, int NotifyCode)
{
 DWORD flag;

 pData->user_fr.fra->Flags &= ~FR_MASK;
 if(pData->fr.Flags & FR_WINE_REPLACE)
  pData->user_fr.fra->Flags |= FR_DOWN;

 if(NotifyCode == BN_CLICKED)
        {
  switch(Id)
  {
  case 131:
   if(GetDlgItemTextA(hDlgWnd, edt1, pData->fr.lpstrFindWhat, pData->fr.wFindWhatLen) > 0)
                        {
    pData->user_fr.fra->Flags |= COMDLG32_FR_GetFlags(hDlgWnd) | FR_FINDNEXT;
                                if(pData->fr.Flags & FR_WINE_UNICODE)
                                {
                                    MultiByteToWideChar( CP_ACP, 0, pData->fr.lpstrFindWhat, -1,
                                                         pData->user_fr.frw->lpstrFindWhat,
                                                         0x7fffffff );
                                }
                                else
                                {
     strcpy(pData->user_fr.fra->lpstrFindWhat, pData->fr.lpstrFindWhat);
                                }
    SendMessageA(pData->fr.hwndOwner, FindReplaceMessage, 0, (LPARAM)pData->user_fr.fra);
                        }
   break;

  case 132:
   pData->user_fr.fra->Flags |= COMDLG32_FR_GetFlags(hDlgWnd) | FR_DIALOGTERM;
   SendMessageA(pData->fr.hwndOwner, FindReplaceMessage, 0, (LPARAM)pData->user_fr.fra);
          DestroyWindow(hDlgWnd);
   break;

                case 129:
   flag = FR_REPLACEALL;
                        goto Replace;

                case 130:
   flag = FR_REPLACE;
Replace:
   if((pData->fr.Flags & FR_WINE_REPLACE)
                        && GetDlgItemTextA(hDlgWnd, edt1, pData->fr.lpstrFindWhat, pData->fr.wFindWhatLen) > 0)
                        {
    pData->fr.lpstrReplaceWith[0] = 0;
    GetDlgItemTextA(hDlgWnd, edt2, pData->fr.lpstrReplaceWith, pData->fr.wReplaceWithLen);
    pData->user_fr.fra->Flags |= COMDLG32_FR_GetFlags(hDlgWnd) | flag;
                                if(pData->fr.Flags & FR_WINE_UNICODE)
                                {
                                    MultiByteToWideChar( CP_ACP, 0, pData->fr.lpstrFindWhat, -1,
                                                         pData->user_fr.frw->lpstrFindWhat,
                                                         0x7fffffff );
                                    MultiByteToWideChar( CP_ACP, 0, pData->fr.lpstrReplaceWith, -1,
                                                         pData->user_fr.frw->lpstrReplaceWith,
                                                         0x7fffffff );
                                }
                                else
                                {
     strcpy(pData->user_fr.fra->lpstrFindWhat, pData->fr.lpstrFindWhat);
     strcpy(pData->user_fr.fra->lpstrReplaceWith, pData->fr.lpstrReplaceWith);
                                }
    SendMessageA(pData->fr.hwndOwner, FindReplaceMessage, 0, (LPARAM)pData->user_fr.fra);
                        }
   break;

  case 128:
   pData->user_fr.fra->Flags |= COMDLG32_FR_GetFlags(hDlgWnd);
   SendMessageA(pData->fr.hwndOwner, HelpMessage, (WPARAM)hDlgWnd, (LPARAM)pData->user_fr.fra);
   break;
                }
        }
        else if(NotifyCode == EN_CHANGE && Id == edt1)
 {
  BOOL enable = SendDlgItemMessageA(hDlgWnd, edt1, WM_GETTEXTLENGTH, 0, 0) > 0;
  EnableWindow(GetDlgItem(hDlgWnd, 131), enable);
                if(pData->fr.Flags & FR_WINE_REPLACE)
                {
   EnableWindow(GetDlgItem(hDlgWnd, 130), enable);
   EnableWindow(GetDlgItem(hDlgWnd, 129), enable);
                }
 }
}
