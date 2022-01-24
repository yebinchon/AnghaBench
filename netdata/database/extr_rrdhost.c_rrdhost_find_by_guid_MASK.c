#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  avl ;
struct TYPE_3__ {int /*<<< orphan*/  machine_guid; scalar_t__ hash_machine_guid; } ;
typedef  TYPE_1__ RRDHOST ;

/* Variables and functions */
 int /*<<< orphan*/  D_RRDHOST ; 
 int /*<<< orphan*/  GUID_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  rrdhost_root_index ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

RRDHOST *FUNC4(const char *guid, uint32_t hash) {
    FUNC1(D_RRDHOST, "Searching in index for host with guid '%s'", guid);

    RRDHOST tmp;
    FUNC3(tmp.machine_guid, guid, GUID_LEN);
    tmp.hash_machine_guid = (hash)?hash:FUNC2(tmp.machine_guid);

    return (RRDHOST *)FUNC0(&(rrdhost_root_index), (avl *) &tmp);
}