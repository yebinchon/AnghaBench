
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
struct TYPE_4__ {int innerstream; int meta; } ;
typedef TYPE_1__ php_stream_temp_data ;
struct TYPE_5__ {scalar_t__ abstract; } ;
typedef TYPE_2__ php_stream ;


 int IS_UNDEF ;

 int PHP_STREAM_OPTION_RETURN_NOTIMPL ;
 int PHP_STREAM_OPTION_RETURN_OK ;
 int Z_ARRVAL (int ) ;
 int Z_ARRVAL_P (int *) ;
 int Z_TYPE (int ) ;
 int php_stream_set_option (int ,int,int,void*) ;
 int zend_hash_copy (int ,int ,int ) ;
 int zval_add_ref ;

__attribute__((used)) static int php_stream_temp_set_option(php_stream *stream, int option, int value, void *ptrparam)
{
 php_stream_temp_data *ts = (php_stream_temp_data*)stream->abstract;

 switch(option) {
  case 128:
   if (Z_TYPE(ts->meta) != IS_UNDEF) {
    zend_hash_copy(Z_ARRVAL_P((zval*)ptrparam), Z_ARRVAL(ts->meta), zval_add_ref);
   }
   return PHP_STREAM_OPTION_RETURN_OK;
  default:
   if (ts->innerstream) {
    return php_stream_set_option(ts->innerstream, option, value, ptrparam);
   }
   return PHP_STREAM_OPTION_RETURN_NOTIMPL;
 }
}
