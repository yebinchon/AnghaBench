#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct cce_user {int mask; int value; int /*<<< orphan*/  notdone; int /*<<< orphan*/  done; int /*<<< orphan*/  name; } ;
typedef  int WCHAR ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,void*,int*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(HANDLE hProcess, void* addr, WCHAR* buffer, void* pmt)
{
    struct cce_user*  user = (struct cce_user*)pmt;

    if (!user->name || !FUNC1(buffer + 1, user->name))
    {
        buffer[0] = (buffer[0] & ~user->mask) | (user->value & user->mask);
        if (FUNC0(hProcess, addr, buffer, 1, NULL))
            user->done++;
        else
            user->notdone++;
    }
    return 1;
}