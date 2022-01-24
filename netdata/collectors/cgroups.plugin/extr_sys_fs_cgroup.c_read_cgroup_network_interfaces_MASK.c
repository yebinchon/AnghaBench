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
struct cgroup_network_interface {void* container_device; void* host_device; struct cgroup_network_interface* next; } ;
struct cgroup {int options; int /*<<< orphan*/  chart_id; int /*<<< orphan*/  id; struct cgroup_network_interface* interfaces; int /*<<< orphan*/  chart_title; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CGROUP_NETWORK_INTERFACE_MAX_LINE ; 
 int CGROUP_OPTIONS_IS_UNIFIED ; 
 int /*<<< orphan*/  D_CGROUP ; 
 struct cgroup_network_interface* FUNC0 (int,int) ; 
 int /*<<< orphan*/  cgroup_cpuacct_base ; 
 int /*<<< orphan*/  cgroup_unified_base ; 
 int /*<<< orphan*/  cgroups_network_interface_script ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static inline void FUNC11(struct cgroup *cg) {
    FUNC1(D_CGROUP, "looking for the network interfaces of cgroup '%s' with chart id '%s' and title '%s'", cg->id, cg->chart_id, cg->chart_title);

    pid_t cgroup_pid;
    char command[CGROUP_NETWORK_INTERFACE_MAX_LINE + 1];

    if(!(cg->options & CGROUP_OPTIONS_IS_UNIFIED)) {
        FUNC8(command, CGROUP_NETWORK_INTERFACE_MAX_LINE, "exec %s --cgroup '%s%s'", cgroups_network_interface_script, cgroup_cpuacct_base, cg->id);
    }
    else {
        FUNC8(command, CGROUP_NETWORK_INTERFACE_MAX_LINE, "exec %s --cgroup '%s%s'", cgroups_network_interface_script, cgroup_unified_base, cg->id);
    }

    FUNC1(D_CGROUP, "executing command '%s' for cgroup '%s'", command, cg->id);
    FILE *fp = FUNC6(command, &cgroup_pid);
    if(!fp) {
        FUNC2("CGROUP: cannot popen(\"%s\", \"r\").", command);
        return;
    }

    char *s;
    char buffer[CGROUP_NETWORK_INTERFACE_MAX_LINE + 1];
    while((s = FUNC3(buffer, CGROUP_NETWORK_INTERFACE_MAX_LINE, fp))) {
        FUNC10(s);

        if(*s && *s != '\n') {
            char *t = s;
            while(*t && *t != ' ') t++;
            if(*t == ' ') {
                *t = '\0';
                t++;
            }

            if(!*s) {
                FUNC2("CGROUP: empty host interface returned by script");
                continue;
            }

            if(!*t) {
                FUNC2("CGROUP: empty guest interface returned by script");
                continue;
            }

            struct cgroup_network_interface *i = FUNC0(1, sizeof(struct cgroup_network_interface));
            i->host_device = FUNC9(s);
            i->container_device = FUNC9(t);
            i->next = cg->interfaces;
            cg->interfaces = i;

            FUNC4("CGROUP: cgroup '%s' has network interface '%s' as '%s'", cg->id, i->host_device, i->container_device);

            // register a device rename to proc_net_dev.c
            FUNC7(i->host_device, i->container_device, cg->chart_id);
        }
    }

    FUNC5(fp, cgroup_pid);
    // debug(D_CGROUP, "closed command for cgroup '%s'", cg->id);
}