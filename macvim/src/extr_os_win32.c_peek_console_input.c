
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPDWORD ;
typedef int INPUT_RECORD ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int read_console_input (int ,int *,int,int ) ;

__attribute__((used)) static BOOL
peek_console_input(
    HANDLE hInput,
    INPUT_RECORD *lpBuffer,
    DWORD nLength,
    LPDWORD lpEvents)
{
    return read_console_input(hInput, lpBuffer, -1, lpEvents);
}
