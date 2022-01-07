
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {scalar_t__ cache_size; } ;
typedef TYPE_1__ lzma_range_encoder ;



__attribute__((used)) static inline uint64_t
rc_pending(const lzma_range_encoder *rc)
{
 return rc->cache_size + 5 - 1;
}
