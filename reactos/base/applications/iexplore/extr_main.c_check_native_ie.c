
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int UINT ;
typedef int LPWSTR ;
typedef int * LPWORD ;
typedef int DWORD ;
typedef int BOOL ;


 int GetFileVersionInfoSizeW (char const*,int *) ;
 int GetFileVersionInfoW (char const*,int ,int ,void*) ;
 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,void*) ;
 int TRUE ;
 scalar_t__ VerQueryValueW (void*,char const*,void**,int *) ;
 int strstrW (int ,char const*) ;
 int wsprintfW (char*,char const*,int ,int ) ;

__attribute__((used)) static BOOL check_native_ie(void)
{
    DWORD handle, size;
    LPWSTR file_desc;
    UINT bytes;
    void* buf;
    BOOL ret = TRUE;
    LPWORD translation;

    static const WCHAR browseui_dllW[] = {'b','r','o','w','s','e','u','i','.','d','l','l',0};
    static const WCHAR wineW[] = {'W','i','n','e',0};
    static const WCHAR translationW[] =
        {'\\','V','a','r','F','i','l','e','I','n','f','o',
         '\\','T','r','a','n','s','l','a','t','i','o','n',0};
    static const WCHAR file_desc_fmtW[] =
        {'\\','S','t','r','i','n','g','F','i','l','e','I','n','f','o',
         '\\','%','0','4','x','%','0','4','x',
         '\\','F','i','l','e','D','e','s','c','r','i','p','t','i','o','n',0};
    WCHAR file_desc_strW[48];

    size = GetFileVersionInfoSizeW(browseui_dllW, &handle);
    if(!size)
        return TRUE;

    buf = HeapAlloc(GetProcessHeap(), 0, size);
    GetFileVersionInfoW(browseui_dllW, 0, size,buf);
    if (VerQueryValueW(buf, translationW, (void **)&translation, &bytes))
    {
        wsprintfW(file_desc_strW, file_desc_fmtW, translation[0], translation[1]);
        ret = !VerQueryValueW(buf, file_desc_strW, (void**)&file_desc, &bytes) || !strstrW(file_desc, wineW);
    }

    HeapFree(GetProcessHeap(), 0, buf);
    return ret;
}
