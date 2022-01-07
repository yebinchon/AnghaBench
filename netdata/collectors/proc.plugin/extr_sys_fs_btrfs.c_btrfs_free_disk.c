
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* hw_sector_size_filename; struct TYPE_4__* size_filename; struct TYPE_4__* name; } ;
typedef TYPE_1__ BTRFS_DISK ;


 int freez (TYPE_1__*) ;

__attribute__((used)) static inline void btrfs_free_disk(BTRFS_DISK *d) {
    freez(d->name);
    freez(d->size_filename);
    freez(d->hw_sector_size_filename);
    freez(d);
}
