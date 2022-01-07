
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mountinfo {struct mountinfo* super_options; struct mountinfo* mount_source; struct mountinfo* filesystem; struct mountinfo* persistent_id; struct mountinfo* mount_options; struct mountinfo* mount_point; struct mountinfo* root; } ;


 int freez (struct mountinfo*) ;

__attribute__((used)) static void mountinfo_free(struct mountinfo *mi) {
    freez(mi->root);
    freez(mi->mount_point);
    freez(mi->mount_options);
    freez(mi->persistent_id);
    freez(mi->filesystem);
    freez(mi->mount_source);
    freez(mi->super_options);
    freez(mi);
}
