
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int QuadPart; } ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int * BSTR ;
typedef int BOOL ;


 int CP_ACP ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (int const*,int ,int ,int *,int ,int ,int *) ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_SHARE_READ ;
 int FIXME (char*) ;
 int GENERIC_READ ;
 int GetFileSizeEx (scalar_t__,TYPE_1__*) ;
 int GetProcessHeap () ;
 unsigned char* HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,unsigned char*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 int OPEN_EXISTING ;
 int ReadFile (scalar_t__,unsigned char*,int ,int*,int *) ;
 int * SysAllocStringLen (int const*,int) ;

__attribute__((used)) static BSTR read_file_to_bstr(const WCHAR *file_name)
{
    LARGE_INTEGER file_size;
    DWORD read_size, size;
    unsigned char *data;
    HANDLE file;
    BOOL r = FALSE;
    BSTR ret;

    file = CreateFileW(file_name, GENERIC_READ, FILE_SHARE_READ, ((void*)0),
                       OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    if (file == INVALID_HANDLE_VALUE) {
        FIXME("Could not open file\n");
        return ((void*)0);
    }

    if (!GetFileSizeEx(file, &file_size) || !file_size.QuadPart) {
        FIXME("Empty file\n");
        CloseHandle(file);
        return ((void*)0);
    }

    data = HeapAlloc(GetProcessHeap(), 0, file_size.QuadPart);
    if (data)
        r = ReadFile(file, data, file_size.QuadPart, &read_size, ((void*)0));
    CloseHandle(file);
    if (!r) {
        FIXME("Read filed\n");
        HeapFree(GetProcessHeap(), 0, data);
        return ((void*)0);
    }

    if (read_size > 2 && data[0] == 0xff && data[1] == 0xfe) {
        ret = SysAllocStringLen((const WCHAR *)(data + 2), (read_size - 2) / sizeof(WCHAR));
    }else {
        size = MultiByteToWideChar(CP_ACP, 0, (const char *)data, read_size, ((void*)0), 0);
        ret = SysAllocStringLen(((void*)0), size);
        if (ret)
            MultiByteToWideChar(CP_ACP, 0, (const char *)data, read_size, ret, size);
    }
    HeapFree(GetProcessHeap(), 0, data);

    return ret;
}
