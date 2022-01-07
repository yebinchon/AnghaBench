
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;
typedef int DWORD ;


 int GetStdHandle (int ) ;
 int _IONBF ;
 int dup2 (int ,int) ;
 int fileno (int *) ;
 int freopen (char*,char*,int *) ;
 scalar_t__ is_a_console (int ) ;
 int setvbuf (int *,int *,int ,int ) ;

__attribute__((used)) static void reopen_console_handle(DWORD std, int fd, FILE *stream)
{
    if (is_a_console(GetStdHandle(std))) {
        freopen("CONOUT$", "wt", stream);
        dup2(fileno(stream), fd);
        setvbuf(stream, ((void*)0), _IONBF, 0);
    }
}
