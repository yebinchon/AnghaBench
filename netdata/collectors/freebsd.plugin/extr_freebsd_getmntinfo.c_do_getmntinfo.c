
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
struct statfs {char* f_mntonname; char* f_fstypename; int f_flags; int f_blocks; char* f_mntfromname; int f_bsize; int f_bavail; int f_bfree; int f_files; int f_ffree; } ;
struct mount_point {int updated; int configured; int enabled; scalar_t__ do_space; scalar_t__ do_inodes; int collected; void* st_inodes; void* rd_inodes_used; void* rd_inodes_avail; void* st_space; void* rd_space_reserved; void* rd_space_used; void* rd_space_avail; } ;
typedef int collected_number ;
typedef int SIMPLE_PATTERN ;


 scalar_t__ CONFIG_BOOLEAN_AUTO ;
 int CONFIG_BOOLEAN_NO ;
 scalar_t__ CONFIG_BOOLEAN_YES ;
 char* CONFIG_SECTION_GETMNTINFO ;
 int DEFAULT_EXCLUDED_FILESYSTEMS ;
 int DELAULT_EXCLUDED_PATHS ;
 int GIGA_FACTOR ;
 int MNT_NOWAIT ;
 int MNT_RDONLY ;
 int NETDATA_CHART_PRIO_DISKSPACE_INODES ;
 int NETDATA_CHART_PRIO_DISKSPACE_SPACE ;
 int RRDSET_TYPE_STACKED ;
 int RRD_ALGORITHM_ABSOLUTE ;
 int SIMPLE_PATTERN_EXACT ;
 int config_get (char*,char*,int ) ;
 void* config_get_boolean_ondemand (char*,char*,int) ;
 int error (char*) ;
 struct mount_point* get_mount_point (char*) ;
 int getmntinfo (struct statfs**,int ) ;
 scalar_t__ likely (int) ;
 int mount_points_cleanup () ;
 scalar_t__ mount_points_found ;
 scalar_t__ netdata_zero_metrics_enabled ;
 void* rrddim_add (void*,char*,char*,int,int,int ) ;
 int rrddim_set_by_pointer (void*,void*,int ) ;
 void* rrdset_create_localhost (char*,char*,int *,char*,char*,char*,char*,char*,char*,int ,int,int ) ;
 int rrdset_done (void*) ;
 int rrdset_next (void*) ;
 int * simple_pattern_create (int ,int *,int ) ;
 scalar_t__ simple_pattern_matches (int *,char*) ;
 int snprintfz (char*,int,char*,char*,char*) ;
 scalar_t__ unlikely (int) ;

int do_getmntinfo(int update_every, usec_t dt) {
    (void)dt;






    static int enable_new_mount_points = -1;
    static int do_space = -1, do_inodes = -1;
    static SIMPLE_PATTERN *excluded_mountpoints = ((void*)0);
    static SIMPLE_PATTERN *excluded_filesystems = ((void*)0);

    if (unlikely(enable_new_mount_points == -1)) {
        enable_new_mount_points = config_get_boolean_ondemand("plugin:freebsd:getmntinfo",
                                                              "enable new mount points detected at runtime",
                                                              CONFIG_BOOLEAN_AUTO);

        do_space = config_get_boolean_ondemand("plugin:freebsd:getmntinfo", "space usage for all disks", CONFIG_BOOLEAN_AUTO);
        do_inodes = config_get_boolean_ondemand("plugin:freebsd:getmntinfo", "inodes usage for all disks", CONFIG_BOOLEAN_AUTO);

        excluded_mountpoints = simple_pattern_create(
                config_get("plugin:freebsd:getmntinfo", "exclude space metrics on paths",
                           "/proc/*")
                , ((void*)0)
                , SIMPLE_PATTERN_EXACT
        );

        excluded_filesystems = simple_pattern_create(
                config_get("plugin:freebsd:getmntinfo", "exclude space metrics on filesystems",
                           "autofs procfs subfs devfs none")
                , ((void*)0)
                , SIMPLE_PATTERN_EXACT
        );
    }

    if (likely(do_space || do_inodes)) {
        struct statfs *mntbuf;
        int mntsize;


        if (unlikely(!(mntsize = getmntinfo(&mntbuf, MNT_NOWAIT)))) {
            error("FREEBSD: getmntinfo() failed");
            do_space = 0;
            error("DISABLED: disk_space.* charts");
            do_inodes = 0;
            error("DISABLED: disk_inodes.* charts");
            error("DISABLED: getmntinfo module");
            return 1;
        } else {
            int i;

            mount_points_found = 0;

            for (i = 0; i < mntsize; i++) {
                char title[4096 + 1];

                struct mount_point *m = get_mount_point(mntbuf[i].f_mntonname);
                m->updated = 1;
                mount_points_found++;

                if (unlikely(!m->configured)) {
                    char var_name[4096 + 1];




                    m->configured = 1;

                    m->enabled = enable_new_mount_points;

                    if (likely(m->enabled))
                        m->enabled = !(simple_pattern_matches(excluded_mountpoints, mntbuf[i].f_mntonname)
                                       || simple_pattern_matches(excluded_filesystems, mntbuf[i].f_fstypename));

                    snprintfz(var_name, 4096, "%s:%s", "plugin:freebsd:getmntinfo", mntbuf[i].f_mntonname);
                    m->enabled = config_get_boolean_ondemand(var_name, "enabled", m->enabled);

                    if (unlikely(m->enabled == CONFIG_BOOLEAN_NO))
                        continue;

                    m->do_space = config_get_boolean_ondemand(var_name, "space usage", do_space);
                    m->do_inodes = config_get_boolean_ondemand(var_name, "inodes usage", do_inodes);
                }

                if (unlikely(!m->enabled))
                    continue;

                if (unlikely(mntbuf[i].f_flags & MNT_RDONLY && !m->collected))
                    continue;



                int rendered = 0;

                if (m->do_space == CONFIG_BOOLEAN_YES || (m->do_space == CONFIG_BOOLEAN_AUTO &&
                                                          (mntbuf[i].f_blocks > 2 ||
                                                           netdata_zero_metrics_enabled == CONFIG_BOOLEAN_YES))) {
                    if (unlikely(!m->st_space)) {
                        snprintfz(title, 4096, "Disk Space Usage for %s [%s]",
                                  mntbuf[i].f_mntonname, mntbuf[i].f_mntfromname);
                        m->st_space = rrdset_create_localhost("disk_space",
                                                              mntbuf[i].f_mntonname,
                                                              ((void*)0),
                                                              mntbuf[i].f_mntonname,
                                                              "disk.space",
                                                              title,
                                                              "GiB",
                                                              "freebsd.plugin",
                                                              "getmntinfo",
                                                              NETDATA_CHART_PRIO_DISKSPACE_SPACE,
                                                              update_every,
                                                              RRDSET_TYPE_STACKED
                        );

                        m->rd_space_avail = rrddim_add(m->st_space, "avail", ((void*)0),
                                                          mntbuf[i].f_bsize, GIGA_FACTOR, RRD_ALGORITHM_ABSOLUTE);
                        m->rd_space_used = rrddim_add(m->st_space, "used", ((void*)0),
                                                          mntbuf[i].f_bsize, GIGA_FACTOR, RRD_ALGORITHM_ABSOLUTE);
                        m->rd_space_reserved = rrddim_add(m->st_space, "reserved_for_root", "reserved for root",
                                                          mntbuf[i].f_bsize, GIGA_FACTOR, RRD_ALGORITHM_ABSOLUTE);
                    } else
                        rrdset_next(m->st_space);

                    rrddim_set_by_pointer(m->st_space, m->rd_space_avail, (collected_number) mntbuf[i].f_bavail);
                    rrddim_set_by_pointer(m->st_space, m->rd_space_used, (collected_number) (mntbuf[i].f_blocks -
                                                                                                 mntbuf[i].f_bfree));
                    rrddim_set_by_pointer(m->st_space, m->rd_space_reserved, (collected_number) (mntbuf[i].f_bfree -
                                                                                                 mntbuf[i].f_bavail));
                    rrdset_done(m->st_space);

                    rendered++;
                }



                if (m->do_inodes == CONFIG_BOOLEAN_YES || (m->do_inodes == CONFIG_BOOLEAN_AUTO &&
                                                           (mntbuf[i].f_files > 1 ||
                                                            netdata_zero_metrics_enabled == CONFIG_BOOLEAN_YES))) {
                    if (unlikely(!m->st_inodes)) {
                        snprintfz(title, 4096, "Disk Files (inodes) Usage for %s [%s]",
                                  mntbuf[i].f_mntonname, mntbuf[i].f_mntfromname);
                        m->st_inodes = rrdset_create_localhost("disk_inodes",
                                                               mntbuf[i].f_mntonname,
                                                               ((void*)0),
                                                               mntbuf[i].f_mntonname,
                                                               "disk.inodes",
                                                               title,
                                                               "inodes",
                                                               "freebsd.plugin",
                                                               "getmntinfo",
                                                               NETDATA_CHART_PRIO_DISKSPACE_INODES,
                                                               update_every,
                                                               RRDSET_TYPE_STACKED
                        );

                        m->rd_inodes_avail = rrddim_add(m->st_inodes, "avail", ((void*)0), 1, 1, RRD_ALGORITHM_ABSOLUTE);
                        m->rd_inodes_used = rrddim_add(m->st_inodes, "used", ((void*)0), 1, 1, RRD_ALGORITHM_ABSOLUTE);
                    } else
                        rrdset_next(m->st_inodes);

                    rrddim_set_by_pointer(m->st_inodes, m->rd_inodes_avail, (collected_number) mntbuf[i].f_ffree);
                    rrddim_set_by_pointer(m->st_inodes, m->rd_inodes_used, (collected_number) (mntbuf[i].f_files -
                                                                                                mntbuf[i].f_ffree));
                    rrdset_done(m->st_inodes);

                    rendered++;
                }

                if (likely(rendered))
                    m->collected++;
            }
        }
    } else {
        error("DISABLED: getmntinfo module");
        return 1;
    }

    mount_points_cleanup();

    return 0;
}
