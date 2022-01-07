
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_11__ {void* sharevistring; void* helpmsgstring; void* lbselchstring; void* fileokstring; } ;
struct TYPE_10__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_9__ {scalar_t__ cy; scalar_t__ cx; } ;
struct TYPE_13__ {scalar_t__ ole_initialized; TYPE_4__* ofnInfos; scalar_t__ unicode; TYPE_3__ HookMsg; TYPE_2__ initial_size; TYPE_1__ sizedlg; } ;
struct TYPE_12__ {int Flags; int hwndOwner; } ;
typedef int LRESULT ;
typedef int LPCWSTR ;
typedef int LPARAM ;
typedef int HRSRC ;
typedef int HANDLE ;
typedef TYPE_5__ FileOpenDlgInfos ;
typedef int BOOL ;


 int CDERR_FINDRESFAILURE ;
 int CDERR_LOADRESFAILURE ;
 int COMDLG32_SetCommDlgExtendedError (int ) ;
 int COMDLG32_hInstance ;
 int DialogBoxIndirectParamA (int ,void*,int ,int ,int ) ;
 int DialogBoxIndirectParamW (int ,void*,int ,int ,int ) ;
 int FALSE ;
 int FILEOKSTRINGW ;
 int FIXME (char*,int) ;
 int FileOpenDlgProc95 ;
 int FindResourceW (int ,int ,int ) ;
 int HELPMSGSTRINGW ;
 int LBSELCHSTRINGW ;
 int LoadResource (int ,int ) ;
 void* LockResource (int ) ;
 int MAKEINTRESOURCEW (int ) ;
 int NEWFILEOPENORD ;
 int NEWFILEOPENV2ORD ;
 int OFN_ENABLEHOOK ;
 int OFN_ENABLESIZING ;
 int OFN_ENABLETEMPLATE ;
 int OFN_ENABLETEMPLATEHANDLE ;
 int OFN_EXPLORER ;
 int OleUninitialize () ;
 scalar_t__ RT_DIALOG ;
 void* RegisterWindowMessageW (int ) ;
 int SHAREVISTRINGW ;
 int UNIMPLEMENTED_FLAGS ;
 scalar_t__ is_dialog_hooked (TYPE_5__*) ;
 scalar_t__ is_places_bar_enabled (TYPE_5__*) ;

__attribute__((used)) static BOOL GetFileName95(FileOpenDlgInfos *fodInfos)
{
    LRESULT lRes;
    void *template;
    HRSRC hRes;
    HANDLE hDlgTmpl = 0;
    WORD templateid;


    if (fodInfos->ofnInfos->Flags & UNIMPLEMENTED_FLAGS)
    {
      FIXME("Flags 0x%08x not yet implemented\n",
         fodInfos->ofnInfos->Flags & UNIMPLEMENTED_FLAGS);
    }



    if (is_places_bar_enabled(fodInfos))
        templateid = NEWFILEOPENV2ORD;
    else
        templateid = NEWFILEOPENORD;

    if (!(hRes = FindResourceW(COMDLG32_hInstance, MAKEINTRESOURCEW(templateid), (LPCWSTR)RT_DIALOG)))
    {
        COMDLG32_SetCommDlgExtendedError(CDERR_FINDRESFAILURE);
        return FALSE;
    }
    if (!(hDlgTmpl = LoadResource(COMDLG32_hInstance, hRes )) ||
        !(template = LockResource( hDlgTmpl )))
    {
        COMDLG32_SetCommDlgExtendedError(CDERR_LOADRESFAILURE);
        return FALSE;
    }




    if( (fodInfos->ofnInfos->Flags & OFN_EXPLORER) &&
            !(fodInfos->ofnInfos->Flags & ( OFN_ENABLEHOOK | OFN_ENABLETEMPLATE | OFN_ENABLETEMPLATEHANDLE)))
        fodInfos->ofnInfos->Flags |= OFN_ENABLESIZING;

    if (fodInfos->ofnInfos->Flags & OFN_ENABLESIZING)
    {
        fodInfos->sizedlg.cx = fodInfos->sizedlg.cy = 0;
        fodInfos->initial_size.x = fodInfos->initial_size.y = 0;
    }


    if (is_dialog_hooked(fodInfos))
    {
      fodInfos->HookMsg.fileokstring = RegisterWindowMessageW(FILEOKSTRINGW);
      fodInfos->HookMsg.lbselchstring = RegisterWindowMessageW(LBSELCHSTRINGW);
      fodInfos->HookMsg.helpmsgstring = RegisterWindowMessageW(HELPMSGSTRINGW);
      fodInfos->HookMsg.sharevistring = RegisterWindowMessageW(SHAREVISTRINGW);
    }

    if (fodInfos->unicode)
      lRes = DialogBoxIndirectParamW(COMDLG32_hInstance,
                                     template,
                                     fodInfos->ofnInfos->hwndOwner,
                                     FileOpenDlgProc95,
                                     (LPARAM) fodInfos);
    else
      lRes = DialogBoxIndirectParamA(COMDLG32_hInstance,
                                     template,
                                     fodInfos->ofnInfos->hwndOwner,
                                     FileOpenDlgProc95,
                                     (LPARAM) fodInfos);
    if (fodInfos->ole_initialized)
        OleUninitialize();


    if( lRes == -1)
        return FALSE;

    return lRes;
}
