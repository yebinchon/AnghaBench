#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_4__ {scalar_t__ OldHandle; struct TYPE_4__* Next; } ;
typedef  TYPE_1__ REDIRECTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

VOID
FUNC2(REDIRECTION *Redir)
{
    REDIRECTION *Next;
    for (; Redir; Redir = Next)
    {
        Next = Redir->Next;
        FUNC0(Redir->OldHandle == INVALID_HANDLE_VALUE);
        FUNC1(Redir);
    }
}