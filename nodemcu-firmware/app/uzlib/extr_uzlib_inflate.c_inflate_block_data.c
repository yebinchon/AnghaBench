
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uchar ;
typedef int UZLIB_TREE ;
struct TYPE_5__ {int (* recall_byte ) (void*) ;void* curLen; int (* put_byte ) (int) ;void* lzOffs; int * distBase; int * distBits; int * lengthBase; int * lengthBits; } ;
typedef TYPE_1__ UZLIB_DATA ;


 int DBG_PRINT (char*,int,int,...) ;
 int UZLIB_DONE ;
 int UZLIB_OK ;
 int decode_symbol (TYPE_1__*,int *) ;
 void* read_bits (TYPE_1__*,int ,int ) ;
 int stub1 (int) ;
 int stub2 (void*) ;
 int stub3 (int) ;

__attribute__((used)) static int inflate_block_data (UZLIB_DATA *d, UZLIB_TREE *lt, UZLIB_TREE *dt) {
  if (d->curLen == 0) {
    int dist;
    int sym = decode_symbol(d, lt);


    if (sym < 256) {
       DBG_PRINT("huff sym: %02x   %c\n", sym, sym);
       d->put_byte(sym);
       return UZLIB_OK;
    }


    if (sym == 256)
       return UZLIB_DONE;


    sym -= 257;

    d->curLen = read_bits(d, d->lengthBits[sym], d->lengthBase[sym]);
    dist = decode_symbol(d, dt);

    d->lzOffs = read_bits(d, d->distBits[dist], d->distBase[dist]);
    DBG_PRINT("huff dict: -%u for %u\n", d->lzOffs, d->curLen);
  }


  uchar b = d->recall_byte(d->lzOffs);
  DBG_PRINT("huff dict byte(%u): -%u -  %02x   %c\n\n",
          d->curLen, d->lzOffs, b, b);
  d->put_byte(b);
  d->curLen--;
  return UZLIB_OK;
}
