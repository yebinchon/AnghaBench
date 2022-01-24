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
typedef  int /*<<< orphan*/  wname ;
struct process {int dummy; } ;
struct module {int dummy; } ;
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int) ; 
 struct module* FUNC1 (struct process const*,int /*<<< orphan*/ *) ; 

struct module* FUNC2(const struct process* pcs, const char* name)
{
    WCHAR wname[MAX_PATH];

    FUNC0(CP_ACP, 0, name, -1, wname, sizeof(wname) / sizeof(WCHAR));
    return FUNC1(pcs, wname);
}