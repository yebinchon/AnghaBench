
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_archive_volume {int seek_to; int src; } ;


 int stream_seek (int ,int) ;

__attribute__((used)) static bool volume_seek(struct mp_archive_volume *vol)
{
    if (vol->seek_to < 0)
        return 1;
    bool r = stream_seek(vol->src, vol->seek_to);
    vol->seek_to = -1;
    return r;
}
