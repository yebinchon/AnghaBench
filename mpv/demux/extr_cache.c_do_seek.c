
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct demux_cache {scalar_t__ file_pos; int fd; } ;
typedef scalar_t__ off_t ;


 int MP_ERR (struct demux_cache*,char*) ;
 int SEEK_SET ;
 scalar_t__ lseek (int ,scalar_t__,int ) ;

__attribute__((used)) static bool do_seek(struct demux_cache *cache, uint64_t pos)
{
    if (cache->file_pos == pos)
        return 1;

    off_t res = lseek(cache->fd, pos, SEEK_SET);

    if (res == (off_t)-1) {
        MP_ERR(cache, "Failed to seek in cache file.\n");
        cache->file_pos = -1;
    } else {
        cache->file_pos = res;
    }

    return cache->file_pos >= 0;
}
