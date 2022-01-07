
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lfs1_disk_superblock {void* version; void* block_count; void* block_size; void** root; } ;


 void* lfs1_fromle32 (void*) ;

__attribute__((used)) static void lfs1_superblock_fromle32(struct lfs1_disk_superblock *d) {
    d->root[0] = lfs1_fromle32(d->root[0]);
    d->root[1] = lfs1_fromle32(d->root[1]);
    d->block_size = lfs1_fromle32(d->block_size);
    d->block_count = lfs1_fromle32(d->block_count);
    d->version = lfs1_fromle32(d->version);
}
