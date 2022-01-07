
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_archive_volume {TYPE_1__* mpa; int src; } ;
struct archive {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {void* buffer; } ;


 int MPMAX (int,int ) ;
 int stream_read_partial (int ,void*,int) ;
 int volume_seek (struct mp_archive_volume*) ;

__attribute__((used)) static ssize_t read_cb(struct archive *arch, void *priv, const void **buffer)
{
    struct mp_archive_volume *vol = priv;
    if (!volume_seek(vol))
        return -1;
    int res = stream_read_partial(vol->src, vol->mpa->buffer,
                                  sizeof(vol->mpa->buffer));
    *buffer = vol->mpa->buffer;
    return MPMAX(res, 0);
}
