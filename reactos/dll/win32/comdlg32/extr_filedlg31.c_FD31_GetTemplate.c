
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {char* lpTemplateName; int hInstance; } ;
struct TYPE_6__ {int Flags; int hInstance; int lpTemplateName; } ;
struct TYPE_5__ {void* template; scalar_t__ open; TYPE_3__* ofnA; TYPE_2__* ofnW; } ;
typedef TYPE_1__* PFD31_DATA ;
typedef int LPWSTR ;
typedef int LPSTR ;
typedef TYPE_2__* LPOPENFILENAMEW ;
typedef TYPE_3__* LPOPENFILENAMEA ;
typedef int HRSRC ;
typedef int HANDLE ;
typedef int BOOL ;


 int CDERR_FINDRESFAILURE ;
 int CDERR_LOADRESFAILURE ;
 int COMDLG32_SetCommDlgExtendedError (int ) ;
 int COMDLG32_hInstance ;
 int FALSE ;
 int FindResourceA (int ,char*,int ) ;
 int FindResourceW (int ,int ,int ) ;
 int LoadResource (int ,int ) ;
 void* LockResource (int ) ;
 int OFN_ENABLETEMPLATE ;
 int OFN_ENABLETEMPLATEHANDLE ;
 scalar_t__ RT_DIALOG ;
 int TRUE ;

__attribute__((used)) static BOOL FD31_GetTemplate(PFD31_DATA lfs)
{
    LPOPENFILENAMEW ofnW = lfs->ofnW;
    LPOPENFILENAMEA ofnA = lfs->ofnA;
    HANDLE hDlgTmpl;

    if (ofnW->Flags & OFN_ENABLETEMPLATEHANDLE)
    {
        if (!(lfs->template = LockResource( ofnW->hInstance )))
        {
            COMDLG32_SetCommDlgExtendedError( CDERR_LOADRESFAILURE );
            return FALSE;
        }
    }
    else if (ofnW->Flags & OFN_ENABLETEMPLATE)
    {
        HRSRC hResInfo;
        if (ofnA)
            hResInfo = FindResourceA( ofnA->hInstance, ofnA->lpTemplateName, (LPSTR)RT_DIALOG );
        else
            hResInfo = FindResourceW( ofnW->hInstance, ofnW->lpTemplateName, (LPWSTR)RT_DIALOG );
        if (!hResInfo)
        {
            COMDLG32_SetCommDlgExtendedError( CDERR_FINDRESFAILURE );
            return FALSE;
        }
        if (!(hDlgTmpl = LoadResource( ofnW->hInstance, hResInfo )) ||
            !(lfs->template = LockResource( hDlgTmpl )))
        {
            COMDLG32_SetCommDlgExtendedError( CDERR_LOADRESFAILURE );
            return FALSE;
        }
    }
    else
    {
        HRSRC hResInfo;
        if (!(hResInfo = FindResourceA( COMDLG32_hInstance, lfs->open ? "OPEN_FILE" : "SAVE_FILE", (LPSTR)RT_DIALOG )))
        {
            COMDLG32_SetCommDlgExtendedError( CDERR_FINDRESFAILURE );
            return FALSE;
        }
        if (!(hDlgTmpl = LoadResource( COMDLG32_hInstance, hResInfo )) ||
            !(lfs->template = LockResource( hDlgTmpl )))
        {
            COMDLG32_SetCommDlgExtendedError( CDERR_LOADRESFAILURE );
            return FALSE;
        }
    }
    return TRUE;
}
