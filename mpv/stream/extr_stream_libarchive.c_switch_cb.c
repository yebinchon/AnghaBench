
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_archive_volume {int dummy; } ;
struct archive {int dummy; } ;


 int open_cb (struct archive*,void*) ;
 int volume_close (struct mp_archive_volume*) ;

__attribute__((used)) static int switch_cb(struct archive *arch, void *oldpriv, void *newpriv)
{
    struct mp_archive_volume *oldvol = oldpriv;
    volume_close(oldvol);
    return open_cb(arch, newpriv);
}
