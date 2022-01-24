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
struct rrdhost_system_info {struct rrdhost_system_info* container_detection; struct rrdhost_system_info* container; struct rrdhost_system_info* virt_detection; struct rrdhost_system_info* virtualization; struct rrdhost_system_info* architecture; struct rrdhost_system_info* kernel_version; struct rrdhost_system_info* kernel_name; struct rrdhost_system_info* os_detection; struct rrdhost_system_info* os_version_id; struct rrdhost_system_info* os_version; struct rrdhost_system_info* os_id_like; struct rrdhost_system_info* os_id; struct rrdhost_system_info* os_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rrdhost_system_info*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct rrdhost_system_info*) ; 
 scalar_t__ FUNC2 (struct rrdhost_system_info*) ; 

void FUNC3(struct rrdhost_system_info *system_info) {
    FUNC1("SYSTEM_INFO: free %p", system_info);

    if(FUNC2(system_info)) {
        FUNC0(system_info->os_name);
        FUNC0(system_info->os_id);
        FUNC0(system_info->os_id_like);
        FUNC0(system_info->os_version);
        FUNC0(system_info->os_version_id);
        FUNC0(system_info->os_detection);
        FUNC0(system_info->kernel_name);
        FUNC0(system_info->kernel_version);
        FUNC0(system_info->architecture);
        FUNC0(system_info->virtualization);
        FUNC0(system_info->virt_detection);
        FUNC0(system_info->container);
        FUNC0(system_info->container_detection);
        FUNC0(system_info);
    }
}