
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_3__ {int working_dir; } ;
typedef char const* LPCWSTR ;
typedef int HRESULT ;
typedef int DWORD ;
typedef TYPE_1__ ADVInfo ;


 int E_OUTOFMEMORY ;
 int GetCurrentDirectoryW (int,char*) ;
 scalar_t__ GetFileAttributesW (char*) ;
 int GetProcessHeap () ;
 int GetWindowsDirectoryW (char*,int) ;
 int HeapAlloc (int ,int ,int) ;
 scalar_t__ INVALID_FILE_ATTRIBUTES ;
 int MAX_PATH ;
 int S_OK ;
 int lstrcatW (char*,char const*) ;
 int lstrcpynW (int ,char const*,int) ;
 int lstrlenW (char const*) ;
 char* wcsrchr (char const*,char) ;

__attribute__((used)) static HRESULT get_working_dir(ADVInfo *info, LPCWSTR inf_filename, LPCWSTR working_dir)
{
    WCHAR path[MAX_PATH];
    LPCWSTR ptr;
    DWORD len;

    static const WCHAR backslash[] = {'\\',0};
    static const WCHAR inf_dir[] = {'\\','I','N','F',0};

    if ((ptr = wcsrchr(inf_filename, '\\')))
    {
        len = ptr - inf_filename + 1;
        ptr = inf_filename;
    }
    else if (working_dir && *working_dir)
    {
        len = lstrlenW(working_dir) + 1;
        ptr = working_dir;
    }
    else
    {
        GetCurrentDirectoryW(MAX_PATH, path);
        lstrcatW(path, backslash);
        lstrcatW(path, inf_filename);


        if (GetFileAttributesW(path) != INVALID_FILE_ATTRIBUTES)
        {
            GetCurrentDirectoryW(MAX_PATH, path);
        }
        else
        {

            GetWindowsDirectoryW(path, MAX_PATH);
            lstrcatW(path, inf_dir);
        }

        len = lstrlenW(path) + 1;
        ptr = path;
    }

    info->working_dir = HeapAlloc(GetProcessHeap(), 0, len * sizeof(WCHAR));
    if (!info->working_dir)
        return E_OUTOFMEMORY;

    lstrcpynW(info->working_dir, ptr, len);

    return S_OK;
}
