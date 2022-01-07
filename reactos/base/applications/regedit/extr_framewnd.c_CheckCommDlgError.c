
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;
typedef int DWORD ;
typedef int BOOL ;
 int CommDlgExtendedError () ;



 int TRUE ;
 int UNREFERENCED_PARAMETER (int ) ;

__attribute__((used)) static BOOL CheckCommDlgError(HWND hWnd)
{
    DWORD dwErrorCode = CommDlgExtendedError();
    UNREFERENCED_PARAMETER(hWnd);
    switch (dwErrorCode)
    {
        case 142:
            break;
        case 141:
            break;
        case 134:
            break;
        case 140:
            break;
        case 133:
            break;
        case 137:
            break;
        case 132:
            break;
        case 139:
            break;
        case 131:
            break;
        case 138:
            break;
        case 130:
            break;
        case 136:
            break;
        case 129:
            break;
        case 135:
            break;
        case 128:
            break;
        default:
            break;
    }
    return TRUE;
}
