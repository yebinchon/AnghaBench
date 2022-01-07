
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int nr_of_files; int curr_frame; TYPE_2__* sh; } ;
typedef TYPE_3__ mf_t ;
struct TYPE_9__ {TYPE_3__* priv; } ;
typedef TYPE_4__ demuxer_t ;
struct TYPE_7__ {TYPE_1__* codec; } ;
struct TYPE_6__ {double fps; } ;


 int SEEK_FACTOR ;

__attribute__((used)) static void demux_seek_mf(demuxer_t *demuxer, double seek_pts, int flags)
{
    mf_t *mf = demuxer->priv;
    int newpos = seek_pts * mf->sh->codec->fps;
    if (flags & SEEK_FACTOR)
        newpos = seek_pts * (mf->nr_of_files - 1);
    if (newpos < 0)
        newpos = 0;
    if (newpos >= mf->nr_of_files)
        newpos = mf->nr_of_files;
    mf->curr_frame = newpos;
}
