
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ dest; scalar_t__ dest_limit; int btype; int bfinal; int dtree; int ltree; } ;
typedef TYPE_1__ TINF_DATA ;


 int TINF_DATA_ERROR ;
 int TINF_DONE ;
 int TINF_OK ;
 int printf (char*,int,int) ;
 int tinf_build_fixed_trees (int *,int *) ;
 int tinf_decode_trees (TYPE_1__*,int *,int *) ;
 int tinf_getbit (TYPE_1__*) ;
 int tinf_inflate_block_data (TYPE_1__*,int *,int *) ;
 int tinf_inflate_uncompressed_block (TYPE_1__*) ;
 int tinf_read_bits (TYPE_1__*,int,int ) ;

int uzlib_uncompress(TINF_DATA *d)
{
    do {
        int res;


        if (d->btype == -1) {
next_blk:

            d->bfinal = tinf_getbit(d);

            d->btype = tinf_read_bits(d, 2, 0);





            if (d->btype == 1) {

                tinf_build_fixed_trees(&d->ltree, &d->dtree);
            } else if (d->btype == 2) {

                res = tinf_decode_trees(d, &d->ltree, &d->dtree);
                if (res != TINF_OK) {
                    return res;
                }
            }
        }


        switch (d->btype)
        {
        case 0:

            res = tinf_inflate_uncompressed_block(d);
            break;
        case 1:
        case 2:


            res = tinf_inflate_block_data(d, &d->ltree, &d->dtree);
            break;
        default:
            return TINF_DATA_ERROR;
        }

        if (res == TINF_DONE && !d->bfinal) {


            goto next_blk;
        }

        if (res != TINF_OK) {
            return res;
        }

    } while (d->dest < d->dest_limit);

    return TINF_OK;
}
