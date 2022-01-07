
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int ID3DXBuffer ;
typedef int HRESULT ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (int const*,int ,int ,int *,int ,int ,int *) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_WRITE ;
 int GetLastError () ;
 int HRESULT_FROM_WIN32 (int ) ;
 void* ID3DXBuffer_GetBufferPointer (int *) ;
 int ID3DXBuffer_GetBufferSize (int *) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int S_OK ;
 int WriteFile (scalar_t__,void*,int ,int *,int *) ;

HRESULT write_buffer_to_file(const WCHAR *dst_filename, ID3DXBuffer *buffer)
{
    HRESULT hr = S_OK;
    void *buffer_pointer;
    DWORD buffer_size;
    DWORD bytes_written;
    HANDLE file = CreateFileW(dst_filename, GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    if (file == INVALID_HANDLE_VALUE)
        return HRESULT_FROM_WIN32(GetLastError());

    buffer_pointer = ID3DXBuffer_GetBufferPointer(buffer);
    buffer_size = ID3DXBuffer_GetBufferSize(buffer);

    if (!WriteFile(file, buffer_pointer, buffer_size, &bytes_written, ((void*)0)))
        hr = HRESULT_FROM_WIN32(GetLastError());

    CloseHandle(file);
    return hr;
}
