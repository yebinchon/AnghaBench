
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 scalar_t__ ERROR_MORE_DATA ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FORMAT_MESSAGE_IGNORE_INSERTS ;
 int FormatMessageA (int,int *,int,int ,char*,size_t,int *) ;
 scalar_t__ GetLastError () ;
 int snprintf (char*,size_t,char*,size_t) ;

__attribute__((used)) static char *fmtmsg_buf(char *buf, size_t buf_size, DWORD errorID)
{
    DWORD n = FormatMessageA(FORMAT_MESSAGE_FROM_SYSTEM |
                             FORMAT_MESSAGE_IGNORE_INSERTS,
                             ((void*)0), errorID, 0, buf, buf_size, ((void*)0));
    if (!n && GetLastError() == ERROR_MORE_DATA) {
        snprintf(buf, buf_size,
                 "<Insufficient buffer size (%zd) for error message>",
                 buf_size);
    } else {
        if (n > 0 && buf[n-1] == '\n')
            buf[n-1] = '\0';
        if (n > 1 && buf[n-2] == '\r')
            buf[n-2] = '\0';
    }
    return buf;
}
