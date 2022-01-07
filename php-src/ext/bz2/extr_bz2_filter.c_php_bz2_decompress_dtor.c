
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int abstract; } ;
typedef TYPE_1__ php_stream_filter ;
struct TYPE_7__ {scalar_t__ status; int persistent; struct TYPE_7__* outbuf; struct TYPE_7__* inbuf; int strm; } ;
typedef TYPE_2__ php_bz2_filter_data ;


 int BZ2_bzDecompressEnd (int *) ;
 scalar_t__ PHP_BZ2_RUNNING ;
 TYPE_2__* Z_PTR (int ) ;
 int pefree (TYPE_2__*,int ) ;

__attribute__((used)) static void php_bz2_decompress_dtor(php_stream_filter *thisfilter)
{
 if (thisfilter && Z_PTR(thisfilter->abstract)) {
  php_bz2_filter_data *data = Z_PTR(thisfilter->abstract);
  if (data->status == PHP_BZ2_RUNNING) {
   BZ2_bzDecompressEnd(&(data->strm));
  }
  pefree(data->inbuf, data->persistent);
  pefree(data->outbuf, data->persistent);
  pefree(data, data->persistent);
 }
}
