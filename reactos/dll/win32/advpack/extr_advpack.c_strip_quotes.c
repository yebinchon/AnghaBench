
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int DWORD ;


 int memmove (char*,char*,int) ;

__attribute__((used)) static void strip_quotes(WCHAR *buffer, DWORD *size)
{
    if (buffer[0] == '\'' && (*size > 1) && buffer[*size-2]=='\'')
    {
        *size -= 2;
        buffer[*size] = 0x00;
        memmove(buffer, buffer + 1, *size * sizeof(WCHAR));
    }
}
