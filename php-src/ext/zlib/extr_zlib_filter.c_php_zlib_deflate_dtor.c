
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int persistent; struct TYPE_6__* outbuf; struct TYPE_6__* inbuf; int strm; } ;
typedef TYPE_1__ php_zlib_filter_data ;
struct TYPE_7__ {int abstract; } ;
typedef TYPE_2__ php_stream_filter ;


 TYPE_1__* Z_PTR (int ) ;
 int deflateEnd (int *) ;
 int pefree (TYPE_1__*,int ) ;

__attribute__((used)) static void php_zlib_deflate_dtor(php_stream_filter *thisfilter)
{
 if (thisfilter && Z_PTR(thisfilter->abstract)) {
  php_zlib_filter_data *data = Z_PTR(thisfilter->abstract);
  deflateEnd(&(data->strm));
  pefree(data->inbuf, data->persistent);
  pefree(data->outbuf, data->persistent);
  pefree(data, data->persistent);
 }
}
