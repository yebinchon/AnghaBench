
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {int OldHandle; int Number; struct TYPE_4__* Next; } ;
typedef TYPE_1__ REDIRECTION ;


 int CloseHandle (int ) ;
 int GetHandle (int ) ;
 int INVALID_HANDLE_VALUE ;
 int SetHandle (int ,int ) ;

VOID
UndoRedirection(REDIRECTION *Redir, REDIRECTION *End)
{
    for (; Redir != End; Redir = Redir->Next)
    {
        CloseHandle(GetHandle(Redir->Number));
        SetHandle(Redir->Number, Redir->OldHandle);
        Redir->OldHandle = INVALID_HANDLE_VALUE;
    }
}
