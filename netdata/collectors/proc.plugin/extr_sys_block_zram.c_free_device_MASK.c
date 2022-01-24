#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  st_comp_ratio; int /*<<< orphan*/  st_alloc_efficiency; int /*<<< orphan*/  st_savings; int /*<<< orphan*/  st_usage; } ;
typedef  TYPE_1__ ZRAM_DEVICE ;
typedef  int /*<<< orphan*/  DICTIONARY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(DICTIONARY *dict, char *name)
{
    ZRAM_DEVICE *d = (ZRAM_DEVICE*)FUNC1(dict, name);
    FUNC2("ZRAM : Disabling monitoring of device %s", name);
    FUNC3(d->st_usage);
    FUNC3(d->st_savings);
    FUNC3(d->st_alloc_efficiency);
    FUNC3(d->st_comp_ratio);
    FUNC0(dict, name);
}