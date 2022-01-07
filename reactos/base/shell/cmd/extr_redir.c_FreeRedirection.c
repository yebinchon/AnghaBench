
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {scalar_t__ OldHandle; struct TYPE_4__* Next; } ;
typedef TYPE_1__ REDIRECTION ;


 int ASSERT (int) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int cmd_free (TYPE_1__*) ;

VOID
FreeRedirection(REDIRECTION *Redir)
{
    REDIRECTION *Next;
    for (; Redir; Redir = Next)
    {
        Next = Redir->Next;
        ASSERT(Redir->OldHandle == INVALID_HANDLE_VALUE);
        cmd_free(Redir);
    }
}
