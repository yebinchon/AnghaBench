
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount_point_metadata {int updated; int st_inodes; int st_space; int * rd_inodes_reserved; int * rd_inodes_used; int * rd_inodes_avail; int * rd_space_reserved; int * rd_space_used; int * rd_space_avail; scalar_t__ shown_error; scalar_t__ collected; } ;


 scalar_t__ cleanup_mount_points ;
 scalar_t__ likely (int) ;
 int rrdset_obsolete_and_pointer_null (int ) ;

int mount_point_cleanup(void *entry, void *data) {
    (void)data;

    struct mount_point_metadata *mp = (struct mount_point_metadata *)entry;
    if(!mp) return 0;

    if(likely(mp->updated)) {
        mp->updated = 0;
        return 0;
    }

    if(likely(cleanup_mount_points && mp->collected)) {
        mp->collected = 0;
        mp->updated = 0;
        mp->shown_error = 0;

        mp->rd_space_avail = ((void*)0);
        mp->rd_space_used = ((void*)0);
        mp->rd_space_reserved = ((void*)0);

        mp->rd_inodes_avail = ((void*)0);
        mp->rd_inodes_used = ((void*)0);
        mp->rd_inodes_reserved = ((void*)0);

        rrdset_obsolete_and_pointer_null(mp->st_space);
        rrdset_obsolete_and_pointer_null(mp->st_inodes);
    }

    return 0;
}
