
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pcache; } ;
typedef TYPE_1__ lfs1_t ;
typedef int lfs1_size_t ;
typedef int lfs1_off_t ;
typedef int lfs1_block_t ;


 int lfs1_cache_prog (TYPE_1__*,int *,int *,int ,int ,void const*,int ) ;

__attribute__((used)) static int lfs1_bd_prog(lfs1_t *lfs1, lfs1_block_t block,
        lfs1_off_t off, const void *buffer, lfs1_size_t size) {
    return lfs1_cache_prog(lfs1, &lfs1->pcache, ((void*)0),
            block, off, buffer, size);
}
