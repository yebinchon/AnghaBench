
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ofnsav ;
typedef int WCHAR ;
typedef int UINT ;
struct TYPE_12__ {int lParam; int fileokstring; scalar_t__ hook; int lbselchstring; TYPE_1__* ofnW; int hwnd; } ;
struct TYPE_11__ {int Flags; char* lpstrFile; int lStructSize; } ;
typedef TYPE_1__ OPENFILENAMEW ;
typedef int LRESULT ;
typedef char* LPWSTR ;
typedef TYPE_1__* LPOPENFILENAMEW ;
typedef int LPCWSTR ;
typedef scalar_t__ LONG ;
typedef int INT ;
typedef int HWND ;
typedef TYPE_3__ FD31_DATA ;
typedef scalar_t__ BOOL ;


 int ARRAY_SIZE (int *) ;
 int BUFFILE ;
 int CD_LBSELCHANGE ;
 int FALSE ;
 scalar_t__ FD31_CallWindowProc (TYPE_3__ const*,int ,int ,int ) ;
 int FD31_TestPath (TYPE_3__ const*,int *) ;
 int FD31_UpdateFileTitle (TYPE_3__ const*) ;
 int FD31_UpdateResult (TYPE_3__ const*,int *) ;
 int GetDlgItemTextW (int ,int ,int *,int ) ;
 int MAKELONG (int ,int ) ;
 int OFN_ALLOWMULTISELECT ;
 int OFN_EXPLORER ;
 int TRACE (char*,int ) ;
 int TRUE ;
 int debugstr_w (int *) ;
 int edt1 ;
 int lst1 ;
 int lstrcpynW (int *,int ,int ) ;
 int lstrlenW (char*) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int min (int ,int) ;
 char* wcsrchr (char*,char) ;

__attribute__((used)) static LRESULT FD31_Validate( const FD31_DATA *lfs, LPCWSTR path, UINT control, INT itemIndex,
                                 BOOL internalUse )
{
    LONG lRet;
    HWND hWnd = lfs->hwnd;
    OPENFILENAMEW ofnsav;
    LPOPENFILENAMEW ofnW = lfs->ofnW;
    WCHAR filename[BUFFILE];
    int copied_size = min( ofnW->lStructSize, sizeof(ofnsav) );

    memcpy( &ofnsav, ofnW, copied_size );


    if (path)
        lstrcpynW(filename, path, ARRAY_SIZE(filename));
    else
        GetDlgItemTextW( hWnd, edt1, filename, ARRAY_SIZE(filename));

    TRACE("got filename = %s\n", debugstr_w(filename));

    if (control != lst1)
    {
        if (!FD31_TestPath( lfs, filename) )
           return FALSE;
    }
    FD31_UpdateResult(lfs, filename);

    if (internalUse)
    {
        if (lfs->hook)
        {
             FD31_CallWindowProc(lfs, lfs->lbselchstring, control,
                             MAKELONG(itemIndex,CD_LBSELCHANGE));
        }
        return TRUE;
    }

    FD31_UpdateFileTitle(lfs);
    if (lfs->hook)
    {
        lRet = FD31_CallWindowProc(lfs, lfs->fileokstring,
                  0, lfs->lParam );
        if (lRet)
        {
            memcpy( ofnW, &ofnsav, copied_size );
            return FALSE;
        }
    }
    if ((ofnW->Flags & OFN_ALLOWMULTISELECT) && (ofnW->Flags & OFN_EXPLORER))
    {
        if (ofnW->lpstrFile)
        {
            LPWSTR str = ofnW->lpstrFile;
            LPWSTR ptr = wcsrchr(str, '\\');
     str[lstrlenW(str) + 1] = '\0';
     *ptr = 0;
        }
    }
    return TRUE;
}
