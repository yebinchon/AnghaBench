
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demux_cache {size_t file_pos; int fd; } ;
typedef size_t ssize_t ;


 int MP_ERR (struct demux_cache*,char*,...) ;
 int errno ;
 int mp_strerror (int ) ;
 size_t read (int ,void*,size_t) ;

__attribute__((used)) static bool read_raw(struct demux_cache *cache, void *ptr, size_t len)
{
    ssize_t res = read(cache->fd, ptr, len);

    if (res < 0) {
        MP_ERR(cache, "Failed to read cache file: %s\n", mp_strerror(errno));
        return 0;
    }

    cache->file_pos += res;



    if (res != len) {
        MP_ERR(cache, "Could not read all data.\n");
        return 0;
    }

    return 1;
}
