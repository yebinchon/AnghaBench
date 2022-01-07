
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ NUL ;
 scalar_t__* p_vfile ;
 int * redir_fd ;
 scalar_t__ redir_reg ;
 scalar_t__ redir_vname ;

int
redirecting()
{
    return redir_fd != ((void*)0) || *p_vfile != NUL



           ;
}
