
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disk {struct disk* name; int st_svctm; int st_avagsz; int st_await; int st_iotime; int st_util; int st_qops; int st_ops; int st_io; } ;


 int disks_added ;
 int freez (struct disk*) ;
 scalar_t__ likely (int ) ;
 int rrdset_is_obsolete (int ) ;

__attribute__((used)) static void disk_free(struct disk *dm) {
    if (likely(dm->st_io))
        rrdset_is_obsolete(dm->st_io);
    if (likely(dm->st_ops))
        rrdset_is_obsolete(dm->st_ops);
    if (likely(dm->st_qops))
        rrdset_is_obsolete(dm->st_qops);
    if (likely(dm->st_util))
        rrdset_is_obsolete(dm->st_util);
    if (likely(dm->st_iotime))
        rrdset_is_obsolete(dm->st_iotime);
    if (likely(dm->st_await))
        rrdset_is_obsolete(dm->st_await);
    if (likely(dm->st_avagsz))
        rrdset_is_obsolete(dm->st_avagsz);
    if (likely(dm->st_svctm))
        rrdset_is_obsolete(dm->st_svctm);

    disks_added--;
    freez(dm->name);
    freez(dm);
}
