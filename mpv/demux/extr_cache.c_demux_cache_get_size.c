
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct demux_cache {int file_size; } ;



uint64_t demux_cache_get_size(struct demux_cache *cache)
{
    return cache->file_size;
}
