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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  TASKDIALOGCONFIG ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char) ; 

__attribute__((used)) static WCHAR *FUNC2(const TASKDIALOGCONFIG *taskconfig, WCHAR *name, DWORD length)
{
    DWORD len = FUNC0(NULL, name, length);
    if (len && len < length)
    {
        WCHAR *p;
        if ((p = FUNC1(name, '/'))) name = p + 1;
        if ((p = FUNC1(name, '\\'))) name = p + 1;
        return name;
    }
    else
        return NULL;
}