
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mp_archive_volume {int seek_to; scalar_t__ src; TYPE_2__* mpa; int url; } ;
struct archive {int dummy; } ;
struct TYPE_4__ {TYPE_1__* primary_src; } ;
struct TYPE_3__ {int global; int cancel; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int STREAM_READ ;
 scalar_t__ stream_create (int ,int ,int ,int ) ;
 scalar_t__ stream_seek (scalar_t__,int ) ;

__attribute__((used)) static int open_cb(struct archive *arch, void *priv)
{
    struct mp_archive_volume *vol = priv;
    vol->seek_to = -1;
    if (!vol->src) {
        vol->src = stream_create(vol->url, STREAM_READ,
                                 vol->mpa->primary_src->cancel,
                                 vol->mpa->primary_src->global);
        return vol->src ? ARCHIVE_OK : ARCHIVE_FATAL;
    }


    return stream_seek(vol->src, 0) ? ARCHIVE_OK : ARCHIVE_FATAL;
}
