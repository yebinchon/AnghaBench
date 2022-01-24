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
struct rrdhost_system_info {void* container_detection; void* container; void* virt_detection; void* virtualization; void* architecture; void* kernel_version; void* kernel_name; void* os_detection; void* os_version_id; void* os_version; void* os_id_like; void* os_id; void* os_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 void* FUNC2 (char*) ; 

int FUNC3(struct rrdhost_system_info *system_info, char *name, char *value) {
    int res = 0;

    if(!FUNC1(name, "NETDATA_SYSTEM_OS_NAME")){
        FUNC0(system_info->os_name);
        system_info->os_name = FUNC2(value);
    }
    else if(!FUNC1(name, "NETDATA_SYSTEM_OS_ID")){
        FUNC0(system_info->os_id);
        system_info->os_id = FUNC2(value);
    }
    else if(!FUNC1(name, "NETDATA_SYSTEM_OS_ID_LIKE")){
        FUNC0(system_info->os_id_like);
        system_info->os_id_like = FUNC2(value);
    }
    else if(!FUNC1(name, "NETDATA_SYSTEM_OS_VERSION")){
        FUNC0(system_info->os_version);
        system_info->os_version = FUNC2(value);
    }
    else if(!FUNC1(name, "NETDATA_SYSTEM_OS_VERSION_ID")){
        FUNC0(system_info->os_version_id);
        system_info->os_version_id = FUNC2(value);
    }
    else if(!FUNC1(name, "NETDATA_SYSTEM_OS_DETECTION")){
        FUNC0(system_info->os_detection);
        system_info->os_detection = FUNC2(value);
    }
    else if(!FUNC1(name, "NETDATA_SYSTEM_KERNEL_NAME")){
        FUNC0(system_info->kernel_name);
        system_info->kernel_name = FUNC2(value);
    }
    else if(!FUNC1(name, "NETDATA_SYSTEM_KERNEL_VERSION")){
        FUNC0(system_info->kernel_version);
        system_info->kernel_version = FUNC2(value);
    }
    else if(!FUNC1(name, "NETDATA_SYSTEM_ARCHITECTURE")){
        FUNC0(system_info->architecture);
        system_info->architecture = FUNC2(value);
    }
    else if(!FUNC1(name, "NETDATA_SYSTEM_VIRTUALIZATION")){
        FUNC0(system_info->virtualization);
        system_info->virtualization = FUNC2(value);
    }
    else if(!FUNC1(name, "NETDATA_SYSTEM_VIRT_DETECTION")){
        FUNC0(system_info->virt_detection);
        system_info->virt_detection = FUNC2(value);
    }
    else if(!FUNC1(name, "NETDATA_SYSTEM_CONTAINER")){
        FUNC0(system_info->container);
        system_info->container = FUNC2(value);
    }
    else if(!FUNC1(name, "NETDATA_SYSTEM_CONTAINER_DETECTION")){
        FUNC0(system_info->container_detection);
        system_info->container_detection = FUNC2(value);
    }
    else {
        res = 1;
    }

    return res;
}