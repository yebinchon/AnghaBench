
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount_point {struct mount_point* name; int st_inodes; int st_space; } ;


 int freez (struct mount_point*) ;
 scalar_t__ likely (int ) ;
 int mount_points_added ;
 int rrdset_is_obsolete (int ) ;

__attribute__((used)) static void mount_point_free(struct mount_point *m) {
    if (likely(m->st_space))
        rrdset_is_obsolete(m->st_space);
    if (likely(m->st_inodes))
        rrdset_is_obsolete(m->st_inodes);

    mount_points_added--;
    freez(m->name);
    freez(m);
}
