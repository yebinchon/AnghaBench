
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mountinfo {char* mount_point; } ;
struct TYPE_2__ {int rrd_update_every; } ;


 void* CONFIG_BOOLEAN_NO ;
 int D_CGROUP ;
 int FILENAME_MAX ;
 int NETDATA_CHART_PRIO_CGROUPS_CONTAINERS ;
 void* Read_hash ;
 int SIMPLE_PATTERN_EXACT ;
 void* Write_hash ;
 int _SC_PAGESIZE ;
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
 void* config_get (char*,char*,char*) ;
 void* config_get_boolean (char*,char*,void*) ;
 void* config_get_boolean_ondemand (char*,char*,void*) ;
 scalar_t__ config_get_number (char*,char*,int) ;
 int debug (int ,char*,char*) ;
 void* enabled_cgroup_paths ;
 void* enabled_cgroup_patterns ;
 void* enabled_cgroup_renames ;
 int error (char*) ;
 TYPE_1__* localhost ;
 struct mountinfo* mountinfo_find_by_filesystem_mount_source (struct mountinfo*,char*,char*) ;
 struct mountinfo* mountinfo_find_by_filesystem_super_option (struct mountinfo*,char*,char*) ;
 int mountinfo_free_all (struct mountinfo*) ;
 struct mountinfo* mountinfo_read (int ) ;
 int netdata_configured_host_prefix ;
 int netdata_configured_primary_plugins_dir ;
 void* simple_hash (char*) ;
 void* simple_pattern_create (void*,int *,int ) ;
 int snprintfz (char*,int ,char*,int ,...) ;
 int sysconf (int ) ;
 void* system_hash ;
 int system_page_size ;
 void* systemd_services_cgroups ;
 void* user_hash ;

void read_cgroup_plugin_configuration() {
    system_page_size = sysconf(_SC_PAGESIZE);

    Read_hash = simple_hash("Read");
    Write_hash = simple_hash("Write");
    user_hash = simple_hash("user");
    system_hash = simple_hash("system");

    cgroup_update_every = (int)config_get_number("plugin:cgroups", "update every", localhost->rrd_update_every);
    if(cgroup_update_every < localhost->rrd_update_every)
        cgroup_update_every = localhost->rrd_update_every;

    cgroup_check_for_new_every = (int)config_get_number("plugin:cgroups", "check for new cgroups every", (long long)cgroup_check_for_new_every * (long long)cgroup_update_every);
    if(cgroup_check_for_new_every < cgroup_update_every)
        cgroup_check_for_new_every = cgroup_update_every;

    cgroup_use_unified_cgroups = config_get_boolean_ondemand("plugin:cgroups", "use unified cgroups", cgroup_use_unified_cgroups);

    cgroup_containers_chart_priority = (int)config_get_number("plugin:cgroups", "containers priority", cgroup_containers_chart_priority);
    if(cgroup_containers_chart_priority < 1)
        cgroup_containers_chart_priority = NETDATA_CHART_PRIO_CGROUPS_CONTAINERS;

    cgroup_enable_cpuacct_stat = config_get_boolean_ondemand("plugin:cgroups", "enable cpuacct stat (total CPU)", cgroup_enable_cpuacct_stat);
    cgroup_enable_cpuacct_usage = config_get_boolean_ondemand("plugin:cgroups", "enable cpuacct usage (per core CPU)", cgroup_enable_cpuacct_usage);

    cgroup_enable_memory = config_get_boolean_ondemand("plugin:cgroups", "enable memory (used mem including cache)", cgroup_enable_memory);
    cgroup_enable_detailed_memory = config_get_boolean_ondemand("plugin:cgroups", "enable detailed memory", cgroup_enable_detailed_memory);
    cgroup_enable_memory_failcnt = config_get_boolean_ondemand("plugin:cgroups", "enable memory limits fail count", cgroup_enable_memory_failcnt);
    cgroup_enable_swap = config_get_boolean_ondemand("plugin:cgroups", "enable swap memory", cgroup_enable_swap);

    cgroup_enable_blkio_io = config_get_boolean_ondemand("plugin:cgroups", "enable blkio bandwidth", cgroup_enable_blkio_io);
    cgroup_enable_blkio_ops = config_get_boolean_ondemand("plugin:cgroups", "enable blkio operations", cgroup_enable_blkio_ops);
    cgroup_enable_blkio_throttle_io = config_get_boolean_ondemand("plugin:cgroups", "enable blkio throttle bandwidth", cgroup_enable_blkio_throttle_io);
    cgroup_enable_blkio_throttle_ops = config_get_boolean_ondemand("plugin:cgroups", "enable blkio throttle operations", cgroup_enable_blkio_throttle_ops);
    cgroup_enable_blkio_queued_ops = config_get_boolean_ondemand("plugin:cgroups", "enable blkio queued operations", cgroup_enable_blkio_queued_ops);
    cgroup_enable_blkio_merged_ops = config_get_boolean_ondemand("plugin:cgroups", "enable blkio merged operations", cgroup_enable_blkio_merged_ops);

    cgroup_recheck_zero_blkio_every_iterations = (int)config_get_number("plugin:cgroups", "recheck zero blkio every iterations", cgroup_recheck_zero_blkio_every_iterations);
    cgroup_recheck_zero_mem_failcnt_every_iterations = (int)config_get_number("plugin:cgroups", "recheck zero memory failcnt every iterations", cgroup_recheck_zero_mem_failcnt_every_iterations);
    cgroup_recheck_zero_mem_detailed_every_iterations = (int)config_get_number("plugin:cgroups", "recheck zero detailed memory every iterations", cgroup_recheck_zero_mem_detailed_every_iterations);

    cgroup_enable_systemd_services = config_get_boolean("plugin:cgroups", "enable systemd services", cgroup_enable_systemd_services);
    cgroup_enable_systemd_services_detailed_memory = config_get_boolean("plugin:cgroups", "enable systemd services detailed memory", cgroup_enable_systemd_services_detailed_memory);
    cgroup_used_memory_without_cache = config_get_boolean("plugin:cgroups", "report used memory without cache", cgroup_used_memory_without_cache);

    char filename[FILENAME_MAX + 1], *s;
    struct mountinfo *mi, *root = mountinfo_read(0);
    if(!cgroup_use_unified_cgroups) {
        mi = mountinfo_find_by_filesystem_super_option(root, "cgroup", "cpuacct");
        if(!mi) mi = mountinfo_find_by_filesystem_mount_source(root, "cgroup", "cpuacct");
        if(!mi) {
            error("CGROUP: cannot find cpuacct mountinfo. Assuming default: /sys/fs/cgroup/cpuacct");
            s = "/sys/fs/cgroup/cpuacct";
        }
        else s = mi->mount_point;
        snprintfz(filename, FILENAME_MAX, "%s%s", netdata_configured_host_prefix, s);
        cgroup_cpuacct_base = config_get("plugin:cgroups", "path to /sys/fs/cgroup/cpuacct", filename);

        mi = mountinfo_find_by_filesystem_super_option(root, "cgroup", "cpuset");
        if(!mi) mi = mountinfo_find_by_filesystem_mount_source(root, "cgroup", "cpuset");
        if(!mi) {
            error("CGROUP: cannot find cpuset mountinfo. Assuming default: /sys/fs/cgroup/cpuset");
            s = "/sys/fs/cgroup/cpuset";
        }
        else s = mi->mount_point;
        snprintfz(filename, FILENAME_MAX, "%s%s", netdata_configured_host_prefix, s);
        cgroup_cpuset_base = config_get("plugin:cgroups", "path to /sys/fs/cgroup/cpuset", filename);

        mi = mountinfo_find_by_filesystem_super_option(root, "cgroup", "blkio");
        if(!mi) mi = mountinfo_find_by_filesystem_mount_source(root, "cgroup", "blkio");
        if(!mi) {
            error("CGROUP: cannot find blkio mountinfo. Assuming default: /sys/fs/cgroup/blkio");
            s = "/sys/fs/cgroup/blkio";
        }
        else s = mi->mount_point;
        snprintfz(filename, FILENAME_MAX, "%s%s", netdata_configured_host_prefix, s);
        cgroup_blkio_base = config_get("plugin:cgroups", "path to /sys/fs/cgroup/blkio", filename);

        mi = mountinfo_find_by_filesystem_super_option(root, "cgroup", "memory");
        if(!mi) mi = mountinfo_find_by_filesystem_mount_source(root, "cgroup", "memory");
        if(!mi) {
            error("CGROUP: cannot find memory mountinfo. Assuming default: /sys/fs/cgroup/memory");
            s = "/sys/fs/cgroup/memory";
        }
        else s = mi->mount_point;
        snprintfz(filename, FILENAME_MAX, "%s%s", netdata_configured_host_prefix, s);
        cgroup_memory_base = config_get("plugin:cgroups", "path to /sys/fs/cgroup/memory", filename);

        mi = mountinfo_find_by_filesystem_super_option(root, "cgroup", "devices");
        if(!mi) mi = mountinfo_find_by_filesystem_mount_source(root, "cgroup", "devices");
        if(!mi) {
            error("CGROUP: cannot find devices mountinfo. Assuming default: /sys/fs/cgroup/devices");
            s = "/sys/fs/cgroup/devices";
        }
        else s = mi->mount_point;
        snprintfz(filename, FILENAME_MAX, "%s%s", netdata_configured_host_prefix, s);
        cgroup_devices_base = config_get("plugin:cgroups", "path to /sys/fs/cgroup/devices", filename);
    }
    else {

        cgroup_enable_cpuacct_usage =


        cgroup_enable_memory_failcnt =



        cgroup_enable_blkio_throttle_io =
        cgroup_enable_blkio_throttle_ops =
        cgroup_enable_blkio_merged_ops =
        cgroup_enable_blkio_queued_ops = CONFIG_BOOLEAN_NO;
        cgroup_search_in_devices = 0;
        cgroup_enable_systemd_services_detailed_memory = CONFIG_BOOLEAN_NO;
        cgroup_used_memory_without_cache = CONFIG_BOOLEAN_NO;


        mi = mountinfo_find_by_filesystem_super_option(root, "cgroup2", "rw");
        if(mi) debug(D_CGROUP, "found unified cgroup root using super options, with path: '%s'", mi->mount_point);
        if(!mi) {
            mi = mountinfo_find_by_filesystem_mount_source(root, "cgroup2", "cgroup");
            if(mi) debug(D_CGROUP, "found unified cgroup root using mountsource info, with path: '%s'", mi->mount_point);
        }
        if(!mi) {
            error("CGROUP: cannot find cgroup2 mountinfo. Assuming default: /sys/fs/cgroup");
            s = "/sys/fs/cgroup";
        }
        else s = mi->mount_point;
        snprintfz(filename, FILENAME_MAX, "%s%s", netdata_configured_host_prefix, s);
        cgroup_unified_base = config_get("plugin:cgroups", "path to unified cgroups", filename);
        debug(D_CGROUP, "using cgroup root: '%s'", cgroup_unified_base);
    }

    cgroup_root_max = (int)config_get_number("plugin:cgroups", "max cgroups to allow", cgroup_root_max);
    cgroup_max_depth = (int)config_get_number("plugin:cgroups", "max cgroups depth to monitor", cgroup_max_depth);

    cgroup_enable_new_cgroups_detected_at_runtime = config_get_boolean("plugin:cgroups", "enable new cgroups detected at run time", cgroup_enable_new_cgroups_detected_at_runtime);

    enabled_cgroup_patterns = simple_pattern_create(
            config_get("plugin:cgroups", "enable by default cgroups matching",


                    " !*/init.scope "
                    " !/system.slice/run-*.scope "
                    " *.scope "



                    " /machine.slice/*.service "



                    " !*/vcpu* "
                    " !*/emulator "
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
                    " !/lxc/*/* "
                    " !/machine "
                    " !/qemu "
                    " !/system "
                    " !/systemd "
                    " !/user "
                    " * "
            ), ((void*)0), SIMPLE_PATTERN_EXACT);

    enabled_cgroup_paths = simple_pattern_create(
            config_get("plugin:cgroups", "search for cgroups in subpaths matching",
                    " !*/init.scope "
                    " !*-qemu "
                    " !*.libvirt-qemu "
                    " !/init.scope "
                    " !/system "
                    " !/systemd "
                    " !/user "
                    " !/user.slice "
                    " !/lxc/*/* "
                    " * "
            ), ((void*)0), SIMPLE_PATTERN_EXACT);

    snprintfz(filename, FILENAME_MAX, "%s/cgroup-name.sh", netdata_configured_primary_plugins_dir);
    cgroups_rename_script = config_get("plugin:cgroups", "script to get cgroup names", filename);

    snprintfz(filename, FILENAME_MAX, "%s/cgroup-network", netdata_configured_primary_plugins_dir);
    cgroups_network_interface_script = config_get("plugin:cgroups", "script to get cgroup network interfaces", filename);

    enabled_cgroup_renames = simple_pattern_create(
            config_get("plugin:cgroups", "run script to rename cgroups matching",
                    " !/ "
                    " !*.mount "
                    " !*.socket "
                    " !*.partition "
                    " /machine.slice/*.service "
                    " !*.service "
                    " !*.slice "
                    " !*.swap "
                    " !*.user "
                    " !init.scope "
                    " !*.scope/vcpu* "
                    " !*.scope/emulator "
                    " *.scope "
                    " *docker* "
                    " *lxc* "
                    " *qemu* "
                    " *kubepods* "
                    " *.libvirt-qemu "
                    " * "
            ), ((void*)0), SIMPLE_PATTERN_EXACT);

    if(cgroup_enable_systemd_services) {
        systemd_services_cgroups = simple_pattern_create(
                config_get("plugin:cgroups", "cgroups to match as systemd services",
                        " !/system.slice/*/*.service "
                        " /system.slice/*.service "
                ), ((void*)0), SIMPLE_PATTERN_EXACT);
    }

    mountinfo_free_all(root);
}
