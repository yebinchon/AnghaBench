
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPVOID ;
typedef int LPSTR ;
typedef int DWORD ;


 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FormatMessageA (int,int *,int ,int ,int ,int ,int *) ;
 int GetLastError () ;
 int LocalFree (int ) ;
 int exit (int) ;
 int fprintf (int ,char*,int ,int ,int ) ;
 int getAppName () ;
 int puts (int ) ;
 int stderr ;

__attribute__((used)) static void REGPROC_print_error(void)
{
    LPVOID lpMsgBuf;
    DWORD error_code;
    int status;

    error_code = GetLastError ();
    status = FormatMessageA(FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM,
                            ((void*)0), error_code, 0, (LPSTR) &lpMsgBuf, 0, ((void*)0));
    if (!status) {
        fprintf(stderr,"%S: Cannot display message for error %lu, status %lu\n",
                getAppName(), error_code, GetLastError());
        exit(1);
    }
    puts(lpMsgBuf);
    LocalFree(lpMsgBuf);
    exit(1);
}
