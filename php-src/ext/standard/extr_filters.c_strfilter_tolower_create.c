
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int uint8_t ;
typedef int php_stream_filter ;


 int * php_stream_filter_alloc (int *,int *,int ) ;
 int strfilter_tolower_ops ;

__attribute__((used)) static php_stream_filter *strfilter_tolower_create(const char *filtername, zval *filterparams, uint8_t persistent)
{
 return php_stream_filter_alloc(&strfilter_tolower_ops, ((void*)0), persistent);
}
