
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int HANDLE ;
typedef int DWORD ;


 int * CurrentMemoryContext ;
 int GetStdHandle (int ) ;
 int STD_ERROR_HANDLE ;
 scalar_t__ WriteConsoleW (int ,int *,int,int *,int *) ;
 int fileno (int ) ;
 int in_error_recursion_trouble () ;
 int pfree (int *) ;
 int * pgwin32_message_to_UTF16 (char const*,int,int*) ;
 int redirection_done ;
 int stderr ;
 int write (int ,char const*,int) ;

__attribute__((used)) static void
write_console(const char *line, int len)
{
 int rc;
 rc = write(fileno(stderr), line, len);
 (void) rc;
}
