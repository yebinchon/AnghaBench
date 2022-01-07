
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int rcache; } ;
typedef TYPE_1__ lfs1_t ;
typedef int lfs1_size_t ;
typedef int lfs1_off_t ;
typedef int lfs1_block_t ;


 int lfs1_cache_crc (TYPE_1__*,int *,int *,int ,int ,int ,int *) ;

__attribute__((used)) static int lfs1_bd_crc(lfs1_t *lfs1, lfs1_block_t block,
        lfs1_off_t off, lfs1_size_t size, uint32_t *crc) {
    return lfs1_cache_crc(lfs1, &lfs1->rcache, ((void*)0), block, off, size, crc);
}
