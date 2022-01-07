
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;


 int GetCurrentProcess () ;
 int OPENSSL_showfatal (char*,int ) ;
 int TerminateProcess (int ,int) ;
 int msg ;

__attribute__((used)) static void unimplemented(void)
{
    OPENSSL_showfatal(sizeof(TCHAR) == sizeof(char) ? "%s\n" : "%S\n", msg);
    TerminateProcess(GetCurrentProcess(), 1);
}
