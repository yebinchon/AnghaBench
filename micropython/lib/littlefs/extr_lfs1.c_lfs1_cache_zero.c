
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* cfg; } ;
typedef TYPE_2__ lfs1_t ;
struct TYPE_8__ {int block; int buffer; } ;
typedef TYPE_3__ lfs1_cache_t ;
struct TYPE_6__ {int prog_size; } ;


 int memset (int ,int,int ) ;

__attribute__((used)) static inline void lfs1_cache_zero(lfs1_t *lfs1, lfs1_cache_t *pcache) {

    memset(pcache->buffer, 0xff, lfs1->cfg->prog_size);
    pcache->block = 0xffffffff;
}
