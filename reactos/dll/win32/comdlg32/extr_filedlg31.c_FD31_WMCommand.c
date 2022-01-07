
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef int HWND ;
typedef int FD31_DATA ;


 int CBN_SELCHANGE ;
 int EndDialog (int ,int ) ;
 int FALSE ;
 int FD31_DirListDblClick (int const*) ;
 int FD31_DiskChange (int const*) ;
 int FD31_FileListSelect (int const*) ;
 int FD31_FileTypeChange (int const*) ;
 int FD31_StripEditControl (int ) ;
 int FD31_Validate (int const*,int *,int,int ,int ) ;



 int LBN_DBLCLK ;
 int LBN_SELCHANGE ;
 int SendMessageW (int ,int ,int,int ) ;
 int TRACE (char*) ;
 int TRUE ;
 int WM_COMMAND ;







__attribute__((used)) static LRESULT FD31_WMCommand( HWND hWnd, LPARAM lParam, UINT notification,
          UINT control, const FD31_DATA *lfs )
{
    switch (control)
    {
        case 130:
        FD31_StripEditControl(hWnd);
        if (notification == LBN_DBLCLK)
        {
            return SendMessageW(hWnd, WM_COMMAND, 134, 0);
        }
        else if (notification == LBN_SELCHANGE)
            return FD31_FileListSelect( lfs );
        break;

        case 129:
        FD31_StripEditControl(hWnd);
        if (notification == LBN_DBLCLK)
            return FD31_DirListDblClick( lfs );
        break;

        case 132:
        if (notification == CBN_SELCHANGE)
            return FD31_FileTypeChange( lfs );
        break;

        case 133:
        break;

        case 128:
        break;

        case 131:
        if (notification == CBN_SELCHANGE)
            return FD31_DiskChange( lfs );
        break;

        case 134:
        TRACE("OK pressed\n");
        if (FD31_Validate( lfs, ((void*)0), control, 0, FALSE ))
            EndDialog(hWnd, TRUE);
        return TRUE;

        case 135:
        EndDialog(hWnd, FALSE);
        return TRUE;

        case 136:
        EndDialog(hWnd, TRUE);
        return TRUE;
    }
    return FALSE;
}
