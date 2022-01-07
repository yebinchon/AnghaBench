
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * config_dir; } ;
typedef TYPE_1__ settings_t ;
typedef int WCHAR ;
typedef int BOOL ;


 int CP_UTF8 ;
 int FALSE ;
 int MAX_PATH ;
 int M_SYSERR ;
 int MsgToEventLog (int ,int ) ;
 scalar_t__ MultiByteToWideChar (int ,int ,int *,int,int *,int) ;
 scalar_t__ PathIsRelativeW (int const*) ;
 int TEXT (char*) ;
 int TRUE ;
 int _countof (int *) ;
 int openvpn_swprintf (int *,int ,char*,int const*,int const*) ;
 int wcslen (int const*) ;
 scalar_t__ wcsncmp (int const*,int const*,int) ;
 int * wcsstr (int const*,char*) ;

__attribute__((used)) static BOOL
CheckConfigPath(const WCHAR *workdir, const WCHAR *fname, const settings_t *s)
{
    WCHAR tmp[MAX_PATH];
    const WCHAR *config_file = ((void*)0);
    const WCHAR *config_dir = ((void*)0);

    WCHAR widepath[MAX_PATH];



    if (PathIsRelativeW(fname) )
    {
        openvpn_swprintf(tmp, _countof(tmp), L"%s\\%s", workdir, fname);
        config_file = tmp;
    }
    else
    {
        config_file = fname;
    }




    if (MultiByteToWideChar(CP_UTF8, 0, s->config_dir, -1, widepath, MAX_PATH) == 0)
    {
        MsgToEventLog(M_SYSERR, TEXT("Failed to convert config_dir name to WideChar"));
        return FALSE;
    }
    config_dir = widepath;


    if (wcsncmp(config_dir, config_file, wcslen(config_dir)) == 0
        && wcsstr(config_file + wcslen(config_dir), L"..") == ((void*)0))
    {
        return TRUE;
    }

    return FALSE;
}
