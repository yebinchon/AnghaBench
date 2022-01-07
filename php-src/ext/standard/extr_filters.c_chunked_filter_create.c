
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
typedef int uint8_t ;
typedef int php_stream_filter_ops ;
typedef int php_stream_filter ;
struct TYPE_3__ {int persistent; scalar_t__ chunk_size; int state; } ;
typedef TYPE_1__ php_chunked_filter_data ;


 int CHUNK_SIZE_START ;
 int chunked_filter_ops ;
 scalar_t__ pecalloc (int,int,int ) ;
 int * php_stream_filter_alloc (int const*,TYPE_1__*,int ) ;
 scalar_t__ strcasecmp (char const*,char*) ;

__attribute__((used)) static php_stream_filter *chunked_filter_create(const char *filtername, zval *filterparams, uint8_t persistent)
{
 const php_stream_filter_ops *fops = ((void*)0);
 php_chunked_filter_data *data;

 if (strcasecmp(filtername, "dechunk")) {
  return ((void*)0);
 }


 data = (php_chunked_filter_data *)pecalloc(1, sizeof(php_chunked_filter_data), persistent);
 data->state = CHUNK_SIZE_START;
 data->chunk_size = 0;
 data->persistent = persistent;
 fops = &chunked_filter_ops;

 return php_stream_filter_alloc(fops, data, persistent);
}
