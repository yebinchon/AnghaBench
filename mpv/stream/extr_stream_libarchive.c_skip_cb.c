
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_archive_volume {int src; } ;
struct archive {int dummy; } ;
typedef int int64_t ;


 int stream_skip (int ,int) ;
 int stream_tell (int ) ;
 int volume_seek (struct mp_archive_volume*) ;

__attribute__((used)) static int64_t skip_cb(struct archive *arch, void *priv, int64_t request)
{
    struct mp_archive_volume *vol = priv;
    if (!volume_seek(vol))
        return -1;
    int64_t old = stream_tell(vol->src);
    stream_skip(vol->src, request);
    return stream_tell(vol->src) - old;
}
