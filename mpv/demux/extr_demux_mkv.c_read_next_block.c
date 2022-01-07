
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct block_info {int dummy; } ;
struct TYPE_5__ {int num_blocks; struct block_info* blocks; } ;
typedef TYPE_1__ mkv_demuxer_t ;
struct TYPE_6__ {TYPE_1__* priv; } ;
typedef TYPE_2__ demuxer_t ;


 int MP_TARRAY_REMOVE_AT (struct block_info*,int ,int ) ;
 int assert (int ) ;
 int read_next_block_into_queue (TYPE_2__*) ;

__attribute__((used)) static int read_next_block(demuxer_t *demuxer, struct block_info *block)
{
    mkv_demuxer_t *mkv_d = demuxer->priv;

    if (!mkv_d->num_blocks) {
        int res = read_next_block_into_queue(demuxer);
        if (res < 1)
            return res;

        assert(mkv_d->num_blocks);
    }

    *block = mkv_d->blocks[0];
    MP_TARRAY_REMOVE_AT(mkv_d->blocks, mkv_d->num_blocks, 0);
    return 1;
}
