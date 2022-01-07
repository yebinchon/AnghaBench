
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void** dir; } ;
struct lfs1_disk_entry {TYPE_1__ u; } ;


 void* lfs1_fromle32 (void*) ;

__attribute__((used)) static void lfs1_entry_fromle32(struct lfs1_disk_entry *d) {
    d->u.dir[0] = lfs1_fromle32(d->u.dir[0]);
    d->u.dir[1] = lfs1_fromle32(d->u.dir[1]);
}
