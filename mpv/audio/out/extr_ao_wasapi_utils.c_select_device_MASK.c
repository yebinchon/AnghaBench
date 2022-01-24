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
typedef  int /*<<< orphan*/  wchar_t ;
struct mp_log {int dummy; } ;
struct device_desc {int /*<<< orphan*/  deviceID; int /*<<< orphan*/  name; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/ * LPWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_log*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static LPWSTR FUNC3(struct mp_log *l, struct device_desc *d)
{
    if (!d)
        return NULL;
    FUNC0(l, "Selecting device \'%s\' (%s)\n", d->id, d->name);
    return FUNC1(NULL, d->deviceID,
                         (FUNC2(d->deviceID) + 1) * sizeof(wchar_t));
}