
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_archive_volume {int dummy; } ;
struct archive {int dummy; } ;


 int ARCHIVE_OK ;
 int talloc_free (struct mp_archive_volume*) ;
 int volume_close (struct mp_archive_volume*) ;

__attribute__((used)) static int close_cb(struct archive *arch, void *priv)
{
    struct mp_archive_volume *vol = priv;
    volume_close(vol);
    talloc_free(vol);
    return ARCHIVE_OK;
}
