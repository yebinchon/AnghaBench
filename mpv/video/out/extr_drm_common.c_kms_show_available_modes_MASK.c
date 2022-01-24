#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mp_log {int dummy; } ;
struct TYPE_4__ {unsigned int count_modes; TYPE_2__* modes; } ;
typedef  TYPE_1__ drmModeConnector ;
struct TYPE_5__ {int /*<<< orphan*/  vdisplay; int /*<<< orphan*/  hdisplay; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_log*,char*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(
    struct mp_log *log, const drmModeConnector *connector)
{
    for (unsigned int i = 0; i < connector->count_modes; i++) {
        FUNC1(log, "  Mode %d: %s (%dx%d@%.2fHz)\n", i,
                connector->modes[i].name,
                connector->modes[i].hdisplay,
                connector->modes[i].vdisplay,
                FUNC0(&connector->modes[i]));
    }
}