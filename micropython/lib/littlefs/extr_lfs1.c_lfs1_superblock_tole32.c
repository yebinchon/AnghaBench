
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lfs1_disk_superblock {void* version; void* block_count; void* block_size; void** root; } ;


 void* lfs1_tole32 (void*) ;

__attribute__((used)) static void lfs1_superblock_tole32(struct lfs1_disk_superblock *d) {
    d->root[0] = lfs1_tole32(d->root[0]);
    d->root[1] = lfs1_tole32(d->root[1]);
    d->block_size = lfs1_tole32(d->block_size);
    d->block_count = lfs1_tole32(d->block_count);
    d->version = lfs1_tole32(d->version);
}
