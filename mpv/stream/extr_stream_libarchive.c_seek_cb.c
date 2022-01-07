
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_archive_volume {int seek_to; int src; } ;
struct archive {int dummy; } ;
typedef int int64_t ;





 int stream_get_size (int ) ;
 int stream_tell (int ) ;

__attribute__((used)) static int64_t seek_cb(struct archive *arch, void *priv,
                       int64_t offset, int whence)
{
    struct mp_archive_volume *vol = priv;
    switch (whence) {
    case 128:
        vol->seek_to = offset;
        break;
    case 130:
        if (vol->seek_to < 0)
            vol->seek_to = stream_tell(vol->src);
        vol->seek_to += offset;
        break;
    case 129: ;
        int64_t size = stream_get_size(vol->src);
        if (size < 0)
            return -1;
        vol->seek_to = size + offset;
        break;
    default:
        return -1;
    }
    return vol->seek_to;
}
