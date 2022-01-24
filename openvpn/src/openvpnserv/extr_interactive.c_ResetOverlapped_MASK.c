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
struct TYPE_4__ {int /*<<< orphan*/  hEvent; } ;
typedef  int /*<<< orphan*/  OVERLAPPED ;
typedef  TYPE_1__* LPOVERLAPPED ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 

__attribute__((used)) static BOOL
FUNC2(LPOVERLAPPED overlapped)
{
    HANDLE io_event = overlapped->hEvent;
    if (!FUNC0(io_event))
    {
        return FALSE;
    }
    FUNC1(overlapped, sizeof(OVERLAPPED));
    overlapped->hEvent = io_event;
    return TRUE;
}