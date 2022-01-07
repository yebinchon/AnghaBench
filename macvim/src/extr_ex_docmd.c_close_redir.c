
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fclose (int *) ;
 int * redir_fd ;
 scalar_t__ redir_reg ;
 scalar_t__ redir_vname ;
 int var_redir_stop () ;

__attribute__((used)) static void
close_redir()
{
    if (redir_fd != ((void*)0))
    {
 fclose(redir_fd);
 redir_fd = ((void*)0);
    }
}
