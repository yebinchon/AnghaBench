
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint ;
struct TYPE_4__ {scalar_t__ curLen; int (* get_byte ) () ;int (* put_byte ) (int ) ;scalar_t__ bitcount; } ;
typedef TYPE_1__ UZLIB_DATA ;


 int UZLIB_DATA_ERROR ;
 int UZLIB_DONE ;
 int UZLIB_OK ;
 int get_uint16 (TYPE_1__*) ;
 int stub1 (int ) ;
 int stub2 () ;

__attribute__((used)) static int inflate_uncompressed_block (UZLIB_DATA *d) {
  if (d->curLen == 0) {
    uint length = get_uint16(d);
    uint invlength = get_uint16(d);


    if (length != (~invlength & 0x0000ffff))
      return UZLIB_DATA_ERROR;



    d->curLen = length + 1;


    d->bitcount = 0;
  }

  if (--d->curLen == 0) {
    return UZLIB_DONE;
  }

  d->put_byte(d->get_byte());
  return UZLIB_OK;
}
