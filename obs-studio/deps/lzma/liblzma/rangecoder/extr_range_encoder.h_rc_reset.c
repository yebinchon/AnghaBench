
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cache_size; scalar_t__ pos; scalar_t__ count; scalar_t__ cache; int range; scalar_t__ low; } ;
typedef TYPE_1__ lzma_range_encoder ;


 int UINT32_MAX ;

__attribute__((used)) static inline void
rc_reset(lzma_range_encoder *rc)
{
 rc->low = 0;
 rc->cache_size = 1;
 rc->range = UINT32_MAX;
 rc->cache = 0;
 rc->count = 0;
 rc->pos = 0;
}
