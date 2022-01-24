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
struct mountinfo {char* mount_point; } ;
struct TYPE_2__ {int rrd_update_every; } ;

/* Variables and functions */
 void* CONFIG_BOOLEAN_NO ; 
 int /*<<< orphan*/  D_CGROUP ; 
 int /*<<< orphan*/  FILENAME_MAX ; 
 int NETDATA_CHART_PRIO_CGROUPS_CONTAINERS ; 
 void* Read_hash ; 
 int /*<<< orphan*/  SIMPLE_PATTERN_EXACT ; 
 void* Write_hash ; 
 int /*<<< orphan*/  _SC_PAGESIZE ; 
 void* cgroup_blkio_base ; 
 int cgroup_check_for_new_every ; 
 int cgroup_containers_chart_priority ; 
 void* cgroup_cpuacct_base ; 
 void* cgroup_cpuset_base ; 
 void* cgroup_devices_base ; 
 void* cgroup_enable_blkio_io ; 
 void* cgroup_enable_blkio_merged_ops ; 
 void* cgroup_enable_blkio_ops ; 
 void* cgroup_enable_blkio_queued_ops ; 
 void* cgroup_enable_blkio_throttle_io ; 
 void* cgroup_enable_blkio_throttle_ops ; 
 void* cgroup_enable_cpuacct_stat ; 
 void* cgroup_enable_cpuacct_usage ; 
 void* cgroup_enable_detailed_memory ; 
 void* cgroup_enable_memory ; 
 void* cgroup_enable_memory_failcnt ; 
 void* cgroup_enable_new_cgroups_detected_at_runtime ; 
 void* cgroup_enable_swap ; 
 void* cgroup_enable_systemd_services ; 
 void* cgroup_enable_systemd_services_detailed_memory ; 
 int cgroup_max_depth ; 
 void* cgroup_memory_base ; 
 int cgroup_recheck_zero_blkio_every_iterations ; 
 int cgroup_recheck_zero_mem_detailed_every_iterations ; 
 int cgroup_recheck_zero_mem_failcnt_every_iterations ; 
 int cgroup_root_max ; 
 scalar_t__ cgroup_search_in_devices ; 
 char* cgroup_unified_base ; 
 int cgroup_update_every ; 
 void* cgroup_use_unified_cgroups ; 
 void* cgroup_used_memory_without_cache ; 
 void* cgroups_network_interface_script ; 
 void* cgroups_rename_script ; 
 void* FUNC0 (char*,char*,char*) ; 
 void* FUNC1 (char*,char*,void*) ; 
 void* FUNC2 (char*,char*,void*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 void* enabled_cgroup_paths ; 
 void* enabled_cgroup_patterns ; 
 void* enabled_cgroup_renames ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_1__* localhost ; 
 struct mountinfo* FUNC6 (struct mountinfo*,char*,char*) ; 
 struct mountinfo* FUNC7 (struct mountinfo*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct mountinfo*) ; 
 struct mountinfo* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netdata_configured_host_prefix ; 
 int /*<<< orphan*/  netdata_configured_primary_plugins_dir ; 
 void* FUNC10 (char*) ; 
 void* FUNC11 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 void* system_hash ; 
 int /*<<< orphan*/  system_page_size ; 
 void* systemd_services_cgroups ; 
 void* user_hash ; 

void FUNC14() {
    system_page_size = FUNC13(_SC_PAGESIZE);

    Read_hash = FUNC10("Read");
    Write_hash = FUNC10("Write");
    user_hash = FUNC10("user");
    system_hash = FUNC10("system");

    cgroup_update_every = (int)FUNC3("plugin:cgroups", "update every", localhost->rrd_update_every);
    if(cgroup_update_every < localhost->rrd_update_every)
        cgroup_update_every = localhost->rrd_update_every;

    cgroup_check_for_new_every = (int)FUNC3("plugin:cgroups", "check for new cgroups every", (long long)cgroup_check_for_new_every * (long long)cgroup_update_every);
    if(cgroup_check_for_new_every < cgroup_update_every)
        cgroup_check_for_new_every = cgroup_update_every;

    cgroup_use_unified_cgroups = FUNC2("plugin:cgroups", "use unified cgroups", cgroup_use_unified_cgroups);

    cgroup_containers_chart_priority = (int)FUNC3("plugin:cgroups", "containers priority", cgroup_containers_chart_priority);
    if(cgroup_containers_chart_priority < 1)
        cgroup_containers_chart_priority = NETDATA_CHART_PRIO_CGROUPS_CONTAINERS;

    cgroup_enable_cpuacct_stat = FUNC2("plugin:cgroups", "enable cpuacct stat (total CPU)", cgroup_enable_cpuacct_stat);
    cgroup_enable_cpuacct_usage = FUNC2("plugin:cgroups", "enable cpuacct usage (per core CPU)", cgroup_enable_cpuacct_usage);

    cgroup_enable_memory = FUNC2("plugin:cgroups", "enable memory (used mem including cache)", cgroup_enable_memory);
    cgroup_enable_detailed_memory = FUNC2("plugin:cgroups", "enable detailed memory", cgroup_enable_detailed_memory);
    cgroup_enable_memory_failcnt = FUNC2("plugin:cgroups", "enable memory limits fail count", cgroup_enable_memory_failcnt);
    cgroup_enable_swap = FUNC2("plugin:cgroups", "enable swap memory", cgroup_enable_swap);

    cgroup_enable_blkio_io = FUNC2("plugin:cgroups", "enable blkio bandwidth", cgroup_enable_blkio_io);
    cgroup_enable_blkio_ops = FUNC2("plugin:cgroups", "enable blkio operations", cgroup_enable_blkio_ops);
    cgroup_enable_blkio_throttle_io = FUNC2("plugin:cgroups", "enable blkio throttle bandwidth", cgroup_enable_blkio_throttle_io);
    cgroup_enable_blkio_throttle_ops = FUNC2("plugin:cgroups", "enable blkio throttle operations", cgroup_enable_blkio_throttle_ops);
    cgroup_enable_blkio_queued_ops = FUNC2("plugin:cgroups", "enable blkio queued operations", cgroup_enable_blkio_queued_ops);
    cgroup_enable_blkio_merged_ops = FUNC2("plugin:cgroups", "enable blkio merged operations", cgroup_enable_blkio_merged_ops);

    cgroup_recheck_zero_blkio_every_iterations = (int)FUNC3("plugin:cgroups", "recheck zero blkio every iterations", cgroup_recheck_zero_blkio_every_iterations);
    cgroup_recheck_zero_mem_failcnt_every_iterations = (int)FUNC3("plugin:cgroups", "recheck zero memory failcnt every iterations", cgroup_recheck_zero_mem_failcnt_every_iterations);
    cgroup_recheck_zero_mem_detailed_every_iterations = (int)FUNC3("plugin:cgroups", "recheck zero detailed memory every iterations", cgroup_recheck_zero_mem_detailed_every_iterations);

    cgroup_enable_systemd_services = FUNC1("plugin:cgroups", "enable systemd services", cgroup_enable_systemd_services);
    cgroup_enable_systemd_services_detailed_memory = FUNC1("plugin:cgroups", "enable systemd services detailed memory", cgroup_enable_systemd_services_detailed_memory);
    cgroup_used_memory_without_cache = FUNC1("plugin:cgroups", "report used memory without cache", cgroup_used_memory_without_cache);

    char filename[FILENAME_MAX + 1], *s;
    struct mountinfo *mi, *root = FUNC9(0);
    if(!cgroup_use_unified_cgroups) {
        mi = FUNC7(root, "cgroup", "cpuacct");
        if(!mi) mi = FUNC6(root, "cgroup", "cpuacct");
        if(!mi) {
            FUNC5("CGROUP: cannot find cpuacct mountinfo. Assuming default: /sys/fs/cgroup/cpuacct");
            s = "/sys/fs/cgroup/cpuacct";
        }
        else s = mi->mount_point;
        FUNC12(filename, FILENAME_MAX, "%s%s", netdata_configured_host_prefix, s);
        cgroup_cpuacct_base = FUNC0("plugin:cgroups", "path to /sys/fs/cgroup/cpuacct", filename);

        mi = FUNC7(root, "cgroup", "cpuset");
        if(!mi) mi = FUNC6(root, "cgroup", "cpuset");
        if(!mi) {
            FUNC5("CGROUP: cannot find cpuset mountinfo. Assuming default: /sys/fs/cgroup/cpuset");
            s = "/sys/fs/cgroup/cpuset";
        }
        else s = mi->mount_point;
        FUNC12(filename, FILENAME_MAX, "%s%s", netdata_configured_host_prefix, s);
        cgroup_cpuset_base = FUNC0("plugin:cgroups", "path to /sys/fs/cgroup/cpuset", filename);

        mi = FUNC7(root, "cgroup", "blkio");
        if(!mi) mi = FUNC6(root, "cgroup", "blkio");
        if(!mi) {
            FUNC5("CGROUP: cannot find blkio mountinfo. Assuming default: /sys/fs/cgroup/blkio");
            s = "/sys/fs/cgroup/blkio";
        }
        else s = mi->mount_point;
        FUNC12(filename, FILENAME_MAX, "%s%s", netdata_configured_host_prefix, s);
        cgroup_blkio_base = FUNC0("plugin:cgroups", "path to /sys/fs/cgroup/blkio", filename);

        mi = FUNC7(root, "cgroup", "memory");
        if(!mi) mi = FUNC6(root, "cgroup", "memory");
        if(!mi) {
            FUNC5("CGROUP: cannot find memory mountinfo. Assuming default: /sys/fs/cgroup/memory");
            s = "/sys/fs/cgroup/memory";
        }
        else s = mi->mount_point;
        FUNC12(filename, FILENAME_MAX, "%s%s", netdata_configured_host_prefix, s);
        cgroup_memory_base = FUNC0("plugin:cgroups", "path to /sys/fs/cgroup/memory", filename);

        mi = FUNC7(root, "cgroup", "devices");
        if(!mi) mi = FUNC6(root, "cgroup", "devices");
        if(!mi) {
            FUNC5("CGROUP: cannot find devices mountinfo. Assuming default: /sys/fs/cgroup/devices");
            s = "/sys/fs/cgroup/devices";
        }
        else s = mi->mount_point;
        FUNC12(filename, FILENAME_MAX, "%s%s", netdata_configured_host_prefix, s);
        cgroup_devices_base = FUNC0("plugin:cgroups", "path to /sys/fs/cgroup/devices", filename);
    }
    else {
        //cgroup_enable_cpuacct_stat =
        cgroup_enable_cpuacct_usage =
        //cgroup_enable_memory =
        //cgroup_enable_detailed_memory =
        cgroup_enable_memory_failcnt =
        //cgroup_enable_swap =
        //cgroup_enable_blkio_io =
        //cgroup_enable_blkio_ops =
        cgroup_enable_blkio_throttle_io =
        cgroup_enable_blkio_throttle_ops =
        cgroup_enable_blkio_merged_ops =
        cgroup_enable_blkio_queued_ops = CONFIG_BOOLEAN_NO;
        cgroup_search_in_devices = 0;
        cgroup_enable_systemd_services_detailed_memory = CONFIG_BOOLEAN_NO;
        cgroup_used_memory_without_cache = CONFIG_BOOLEAN_NO; //unified cgroups use different values

        //TODO: can there be more than 1 cgroup2 mount point?
        mi = FUNC7(root, "cgroup2", "rw"); //there is no cgroup2 specific super option - for now use 'rw' option
        if(mi) FUNC4(D_CGROUP, "found unified cgroup root using super options, with path: '%s'", mi->mount_point);
        if(!mi) {
            mi = FUNC6(root, "cgroup2", "cgroup");
            if(mi) FUNC4(D_CGROUP, "found unified cgroup root using mountsource info, with path: '%s'", mi->mount_point);
        }
        if(!mi) {
            FUNC5("CGROUP: cannot find cgroup2 mountinfo. Assuming default: /sys/fs/cgroup");
            s = "/sys/fs/cgroup";
        }
        else s = mi->mount_point;
        FUNC12(filename, FILENAME_MAX, "%s%s", netdata_configured_host_prefix, s);
        cgroup_unified_base = FUNC0("plugin:cgroups", "path to unified cgroups", filename);
        FUNC4(D_CGROUP, "using cgroup root: '%s'", cgroup_unified_base);
    }

    cgroup_root_max = (int)FUNC3("plugin:cgroups", "max cgroups to allow", cgroup_root_max);
    cgroup_max_depth = (int)FUNC3("plugin:cgroups", "max cgroups depth to monitor", cgroup_max_depth);

    cgroup_enable_new_cgroups_detected_at_runtime = FUNC1("plugin:cgroups", "enable new cgroups detected at run time", cgroup_enable_new_cgroups_detected_at_runtime);

    enabled_cgroup_patterns = FUNC11(
            FUNC0("plugin:cgroups", "enable by default cgroups matching",
            // ----------------------------------------------------------------

                    " !*/init.scope "                      // ignore init.scope
                    " !/system.slice/run-*.scope "         // ignore system.slice/run-XXXX.scope
                    " *.scope "                            // we need all other *.scope for sure

            // ----------------------------------------------------------------

                    " /machine.slice/*.service "           // #3367 systemd-nspawn

            // ----------------------------------------------------------------

                    " !*/vcpu* "                           // libvirtd adds these sub-cgroups
                    " !*/emulator "                        // libvirtd adds these sub-cgroups
                    " !*.mount "
                    " !*.partition "
                    " !*.service "
                    " !*.socket "
                    " !*.slice "
                    " !*.swap "
                    " !*.user "
                    " !/ "
                    " !/docker "
                    " !/libvirt "
                    " !/lxc "
                    " !/lxc/*/* "                          //  #1397 #2649
                    " !/machine "
                    " !/qemu "
                    " !/system "
                    " !/systemd "
                    " !/user "
                    " * "                                  // enable anything else
            ), NULL, SIMPLE_PATTERN_EXACT);

    enabled_cgroup_paths = FUNC11(
            FUNC0("plugin:cgroups", "search for cgroups in subpaths matching",
                    " !*/init.scope "                      // ignore init.scope
                    " !*-qemu "                            //  #345
                    " !*.libvirt-qemu "                    //  #3010
                    " !/init.scope "
                    " !/system "
                    " !/systemd "
                    " !/user "
                    " !/user.slice "
                    " !/lxc/*/* "                          //  #2161 #2649
                    " * "
            ), NULL, SIMPLE_PATTERN_EXACT);

    FUNC12(filename, FILENAME_MAX, "%s/cgroup-name.sh", netdata_configured_primary_plugins_dir);
    cgroups_rename_script = FUNC0("plugin:cgroups", "script to get cgroup names", filename);

    FUNC12(filename, FILENAME_MAX, "%s/cgroup-network", netdata_configured_primary_plugins_dir);
    cgroups_network_interface_script = FUNC0("plugin:cgroups", "script to get cgroup network interfaces", filename);

    enabled_cgroup_renames = FUNC11(
            FUNC0("plugin:cgroups", "run script to rename cgroups matching",
                    " !/ "
                    " !*.mount "
                    " !*.socket "
                    " !*.partition "
                    " /machine.slice/*.service "          // #3367 systemd-nspawn
                    " !*.service "
                    " !*.slice "
                    " !*.swap "
                    " !*.user "
                    " !init.scope "
                    " !*.scope/vcpu* "                    // libvirtd adds these sub-cgroups
                    " !*.scope/emulator "                 // libvirtd adds these sub-cgroups
                    " *.scope "
                    " *docker* "
                    " *lxc* "
                    " *qemu* "
                    " *kubepods* "                        // #3396 kubernetes
                    " *.libvirt-qemu "                    // #3010
                    " * "
            ), NULL, SIMPLE_PATTERN_EXACT);

    if(cgroup_enable_systemd_services) {
        systemd_services_cgroups = FUNC11(
                FUNC0("plugin:cgroups", "cgroups to match as systemd services",
                        " !/system.slice/*/*.service "
                        " /system.slice/*.service "
                ), NULL, SIMPLE_PATTERN_EXACT);
    }

    FUNC8(root);
}