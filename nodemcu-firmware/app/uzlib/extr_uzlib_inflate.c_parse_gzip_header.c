
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uchar ;
struct TYPE_5__ {int (* get_byte ) () ;} ;
typedef TYPE_1__ UZLIB_DATA ;


 int UZLIB_DATA_ERROR ;
 int UZLIB_FCOMMENT ;
 int UZLIB_FEXTRA ;
 int UZLIB_FHCRC ;
 int UZLIB_FNAME ;
 int UZLIB_OK ;
 int get_uint16 (TYPE_1__*) ;
 int skip_bytes (TYPE_1__*,int) ;
 int stub1 () ;
 int stub2 () ;
 int stub3 () ;
 int stub4 () ;

__attribute__((used)) static int parse_gzip_header(UZLIB_DATA *d) {


  if (d->get_byte() != 0x1f || d->get_byte() != 0x8b)
    return UZLIB_DATA_ERROR;

  if (d->get_byte() != 8)
    return UZLIB_DATA_ERROR;

  uchar flg = d->get_byte();

  if (flg & 0xe0)
    return UZLIB_DATA_ERROR;

  skip_bytes(d, 6);

  if (flg & UZLIB_FEXTRA)
     skip_bytes(d, get_uint16(d));

  if (flg & UZLIB_FNAME)
    skip_bytes(d,0);

  if (flg & UZLIB_FCOMMENT)
    skip_bytes(d,0);

  if (flg & UZLIB_FHCRC)
    skip_bytes(d,2);

  return UZLIB_OK;
}
