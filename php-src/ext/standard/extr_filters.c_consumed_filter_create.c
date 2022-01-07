
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int uint8_t ;
typedef int php_stream_filter_ops ;
typedef int php_stream_filter ;
struct TYPE_4__ {int offset; scalar_t__ consumed; int persistent; } ;
typedef TYPE_1__ php_consumed_filter_data ;


 int consumed_filter_ops ;
 TYPE_1__* pecalloc (int,int,int ) ;
 int * php_stream_filter_alloc (int const*,TYPE_1__*,int ) ;
 scalar_t__ strcasecmp (char const*,char*) ;

__attribute__((used)) static php_stream_filter *consumed_filter_create(const char *filtername, zval *filterparams, uint8_t persistent)
{
 const php_stream_filter_ops *fops = ((void*)0);
 php_consumed_filter_data *data;

 if (strcasecmp(filtername, "consumed")) {
  return ((void*)0);
 }


 data = pecalloc(1, sizeof(php_consumed_filter_data), persistent);
 data->persistent = persistent;
 data->consumed = 0;
 data->offset = ~0;
 fops = &consumed_filter_ops;

 return php_stream_filter_alloc(fops, data, persistent);
}
