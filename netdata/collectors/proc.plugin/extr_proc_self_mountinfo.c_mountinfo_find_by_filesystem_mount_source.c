
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct mountinfo {scalar_t__ filesystem_hash; scalar_t__ mount_source_hash; scalar_t__ mount_source; scalar_t__ filesystem; struct mountinfo* next; } ;


 scalar_t__ simple_hash (char const*) ;
 int strcmp (scalar_t__,char const*) ;
 scalar_t__ unlikely (int) ;

struct mountinfo *mountinfo_find_by_filesystem_mount_source(struct mountinfo *root, const char *filesystem, const char *mount_source) {
    struct mountinfo *mi;
    uint32_t filesystem_hash = simple_hash(filesystem), mount_source_hash = simple_hash(mount_source);

    for(mi = root; mi ; mi = mi->next)
        if(unlikely(mi->filesystem
                && mi->mount_source
                && mi->filesystem_hash == filesystem_hash
                && mi->mount_source_hash == mount_source_hash
                && !strcmp(mi->filesystem, filesystem)
                && !strcmp(mi->mount_source, mount_source)))
            return mi;

    return ((void*)0);
}
