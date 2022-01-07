
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int HANDLE ;
typedef int ENCODING ;
typedef int DWORD ;


 int CP_ACP ;
 int CP_UTF8 ;




 int FIXME (char*,int) ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char*) ;
 int PROFILE_ByteSwapShortBuffer (char*,int) ;
 int TRACE (char*,int ) ;
 int WideCharToMultiByte (int ,int ,char*,int,char*,int,int *,int *) ;
 int WriteFile (int ,char*,int,int *,int *) ;
 int debugstr_wn (char*,int) ;

__attribute__((used)) static void PROFILE_WriteLine( HANDLE hFile, WCHAR * szLine, int len, ENCODING encoding)
{
    char * write_buffer;
    int write_buffer_len;
    DWORD dwBytesWritten;

    TRACE("writing: %s\n", debugstr_wn(szLine, len));

    switch (encoding)
    {
    case 131:
        write_buffer_len = WideCharToMultiByte(CP_ACP, 0, szLine, len, ((void*)0), 0, ((void*)0), ((void*)0));
        write_buffer = HeapAlloc(GetProcessHeap(), 0, write_buffer_len);
        if (!write_buffer) return;
        len = WideCharToMultiByte(CP_ACP, 0, szLine, len, write_buffer, write_buffer_len, ((void*)0), ((void*)0));
        WriteFile(hFile, write_buffer, len, &dwBytesWritten, ((void*)0));
        HeapFree(GetProcessHeap(), 0, write_buffer);
        break;
    case 128:
        write_buffer_len = WideCharToMultiByte(CP_UTF8, 0, szLine, len, ((void*)0), 0, ((void*)0), ((void*)0));
        write_buffer = HeapAlloc(GetProcessHeap(), 0, write_buffer_len);
        if (!write_buffer) return;
        len = WideCharToMultiByte(CP_UTF8, 0, szLine, len, write_buffer, write_buffer_len, ((void*)0), ((void*)0));
        WriteFile(hFile, write_buffer, len, &dwBytesWritten, ((void*)0));
        HeapFree(GetProcessHeap(), 0, write_buffer);
        break;
    case 129:
        WriteFile(hFile, szLine, len * sizeof(WCHAR), &dwBytesWritten, ((void*)0));
        break;
    case 130:
        PROFILE_ByteSwapShortBuffer(szLine, len);
        WriteFile(hFile, szLine, len * sizeof(WCHAR), &dwBytesWritten, ((void*)0));
        break;
    default:
        FIXME("encoding type %d not implemented\n", encoding);
    }
}
