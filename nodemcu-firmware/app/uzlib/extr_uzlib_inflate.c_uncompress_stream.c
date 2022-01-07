
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int bType; int bFinal; int dtree; int ltree; scalar_t__ destSize; } ;
typedef TYPE_1__ UZLIB_DATA ;


 int DBG_PRINT (char*,int,int ) ;
 int UZLIB_DATA_ERROR ;
 int UZLIB_DONE ;
 int UZLIB_OK ;
 int build_fixed_trees (int *,int *) ;
 int decode_trees (TYPE_1__*,int *,int *) ;
 int getbit (TYPE_1__*) ;
 int inflate_block_data (TYPE_1__*,int *,int *) ;
 int inflate_uncompressed_block (TYPE_1__*) ;
 int read_bits (TYPE_1__*,int,int ) ;

__attribute__((used)) static int uncompress_stream (UZLIB_DATA *d) {
  do {
    int res;


    if (d->bType == -1) {
      next_blk:

      d->bFinal = getbit(d);

      d->bType = read_bits(d, 2, 0);

      DBG_PRINT("Started new block: type=%d final=%d\n", d->bType, d->bFinal);

      if (d->bType == 1) {

        build_fixed_trees(&d->ltree, &d->dtree);
      } else if (d->bType == 2) {

        res = decode_trees(d, &d->ltree, &d->dtree);
        if (res != UZLIB_OK)
          return res;
      }
    }


    switch (d->bType) {
    case 0:

      res = inflate_uncompressed_block(d);
      break;
    case 1:
    case 2:


      res = inflate_block_data(d, &d->ltree, &d->dtree);
      break;
    default:
      return UZLIB_DATA_ERROR;
    }

    if (res == UZLIB_DONE && !d->bFinal) {


      goto next_blk;
    }

    if (res != UZLIB_OK)
      return res;

  } while (--d->destSize);

  return UZLIB_OK;
}
