
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int TCHAR ;
typedef int * LPCTSTR ;
typedef int DWORD ;


 int FORMAT_MESSAGE_ARGUMENT_ARRAY ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FORMAT_MESSAGE_IGNORE_INSERTS ;
 scalar_t__ FormatMessage (int,int *,int ,int ,int *,int,int *) ;
 int M_ERR ;
 int MsgToEventLog (int ,char*,char const*,int ,int *) ;
 int * TEXT (char*) ;

__attribute__((used)) static void
BlockDNSErrHandler(DWORD err, const char *msg)
{
    TCHAR buf[256];
    LPCTSTR err_str;

    if (!err)
    {
        return;
    }

    err_str = TEXT("Unknown Win32 Error");

    if (FormatMessage(FORMAT_MESSAGE_IGNORE_INSERTS | FORMAT_MESSAGE_FROM_SYSTEM
                      | FORMAT_MESSAGE_ARGUMENT_ARRAY,
                      ((void*)0), err, 0, buf, sizeof(buf), ((void*)0)))
    {
        err_str = buf;
    }




    MsgToEventLog(M_ERR, "%s (status = %lu): %s", msg, err, err_str);


}
