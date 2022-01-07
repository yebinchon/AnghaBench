
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int abstract; } ;
typedef TYPE_1__ php_stream_filter ;
struct TYPE_6__ {int persistent; } ;
typedef TYPE_2__ php_chunked_filter_data ;


 scalar_t__ Z_PTR (int ) ;
 int pefree (TYPE_2__*,int ) ;

__attribute__((used)) static void php_chunked_dtor(php_stream_filter *thisfilter)
{
 if (thisfilter && Z_PTR(thisfilter->abstract)) {
  php_chunked_filter_data *data = (php_chunked_filter_data *) Z_PTR(thisfilter->abstract);
  pefree(data, data->persistent);
 }
}
