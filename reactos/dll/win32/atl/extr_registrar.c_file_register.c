
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int Registrar ;
typedef char* LPWSTR ;
typedef char* LPSTR ;
typedef int LPCOLESTR ;
typedef int HRESULT ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CP_ACP ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (int ,int ,int ,int *,int ,int ,int *) ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 int GetFileSize (scalar_t__,int *) ;
 int GetLastError () ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 int HRESULT_FROM_WIN32 (int ) ;
 char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MultiByteToWideChar (int ,int ,char*,int,char*,int) ;
 int OPEN_EXISTING ;
 scalar_t__ ReadFile (scalar_t__,char*,int,int *,int *) ;
 int WARN (char*,int ) ;
 int debugstr_w (int ) ;
 int string_register (int *,char*,int ) ;

__attribute__((used)) static HRESULT file_register(Registrar *This, LPCOLESTR fileName, BOOL do_register)
{
    HANDLE file;
    DWORD filelen, len;
    LPWSTR regstrw;
    LPSTR regstra;
    HRESULT hres;

    file = CreateFileW(fileName, GENERIC_READ, FILE_SHARE_READ, ((void*)0), OPEN_EXISTING, 0, ((void*)0));
    if(file != INVALID_HANDLE_VALUE) {
        filelen = GetFileSize(file, ((void*)0));
        regstra = HeapAlloc(GetProcessHeap(), 0, filelen);
        if(ReadFile(file, regstra, filelen, ((void*)0), ((void*)0))) {
            len = MultiByteToWideChar(CP_ACP, 0, regstra, filelen, ((void*)0), 0)+1;
            regstrw = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, len*sizeof(WCHAR));
            MultiByteToWideChar(CP_ACP, 0, regstra, filelen, regstrw, len);
            regstrw[len-1] = '\0';

            hres = string_register(This, regstrw, do_register);

            HeapFree(GetProcessHeap(), 0, regstrw);
        }else {
            WARN("Failed to read file %s\n", debugstr_w(fileName));
            hres = HRESULT_FROM_WIN32(GetLastError());
        }
        HeapFree(GetProcessHeap(), 0, regstra);
        CloseHandle(file);
    }else {
        WARN("Could not open file %s\n", debugstr_w(fileName));
        hres = HRESULT_FROM_WIN32(GetLastError());
    }

    return hres;
}
