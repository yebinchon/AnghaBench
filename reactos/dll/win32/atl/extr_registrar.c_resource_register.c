
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int Registrar ;
typedef char* LPWSTR ;
typedef int LPSTR ;
typedef int LPCOLESTR ;
typedef int HRSRC ;
typedef int HRESULT ;
typedef scalar_t__ HINSTANCE ;
typedef int DWORD ;
typedef int BOOL ;


 int CP_ACP ;
 int FindResourceW (scalar_t__,int ,int ) ;
 int FreeLibrary (scalar_t__) ;
 int GetLastError () ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 int HRESULT_FROM_WIN32 (int ) ;
 char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char*) ;
 int LOAD_LIBRARY_AS_DATAFILE ;
 scalar_t__ LoadLibraryExW (int ,int *,int ) ;
 int LoadResource (scalar_t__,int ) ;
 int MultiByteToWideChar (int ,int ,int ,int,char*,int) ;
 int SizeofResource (scalar_t__,int ) ;
 int WARN (char*) ;
 int string_register (int *,char*,int ) ;

__attribute__((used)) static HRESULT resource_register(Registrar *This, LPCOLESTR resFileName,
                        LPCOLESTR szID, LPCOLESTR szType, BOOL do_register)
{
    HINSTANCE hins;
    HRSRC src;
    LPSTR regstra;
    LPWSTR regstrw;
    DWORD len, reslen;
    HRESULT hres;

    hins = LoadLibraryExW(resFileName, ((void*)0), LOAD_LIBRARY_AS_DATAFILE);
    if(hins) {
        src = FindResourceW(hins, szID, szType);
        if(src) {
            regstra = LoadResource(hins, src);
            reslen = SizeofResource(hins, src);
            if(regstra) {
                len = MultiByteToWideChar(CP_ACP, 0, regstra, reslen, ((void*)0), 0)+1;
                regstrw = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, len*sizeof(WCHAR));
                MultiByteToWideChar(CP_ACP, 0, regstra, reslen, regstrw, len);
                regstrw[len-1] = '\0';

                hres = string_register(This, regstrw, do_register);

                HeapFree(GetProcessHeap(), 0, regstrw);
            }else {
                WARN("could not load resource\n");
                hres = HRESULT_FROM_WIN32(GetLastError());
            }
        }else {
            WARN("Could not find source\n");
            hres = HRESULT_FROM_WIN32(GetLastError());
        }
        FreeLibrary(hins);
    }else {
        WARN("Could not load resource file\n");
        hres = HRESULT_FROM_WIN32(GetLastError());
    }

    return hres;
}
