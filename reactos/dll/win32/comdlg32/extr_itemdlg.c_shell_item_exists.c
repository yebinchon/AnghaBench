
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SFGAOF ;
typedef int LPWSTR ;
typedef int IShellItem ;
typedef int HRESULT ;
typedef int BOOL ;


 int CoTaskMemFree (int ) ;
 scalar_t__ GetFileAttributesW (int ) ;
 scalar_t__ INVALID_FILE_ATTRIBUTES ;
 int IShellItem_GetAttributes (int *,int ,int *) ;
 int IShellItem_GetDisplayName (int *,int ,int *) ;
 int SFGAO_VALIDATE ;
 int SIGDN_FILESYSPATH ;
 int SUCCEEDED (int ) ;

__attribute__((used)) static BOOL shell_item_exists(IShellItem* shellitem)
{
    LPWSTR filename;
    HRESULT hr;
    BOOL result;

    hr = IShellItem_GetDisplayName(shellitem, SIGDN_FILESYSPATH, &filename);
    if (SUCCEEDED(hr))
    {

        result = (GetFileAttributesW(filename) != INVALID_FILE_ATTRIBUTES);
        CoTaskMemFree(filename);
    }
    else
    {
        SFGAOF attributes;
        result = SUCCEEDED(IShellItem_GetAttributes(shellitem, SFGAO_VALIDATE, &attributes));
    }

    return result;
}
