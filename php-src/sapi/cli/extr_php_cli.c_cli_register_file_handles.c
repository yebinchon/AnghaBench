
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {void* name; int value; } ;
typedef TYPE_1__ zend_constant ;
typedef int php_stream_context ;
struct TYPE_10__ {int flags; } ;
typedef TYPE_2__ php_stream ;


 int CONST_CS ;
 int PHP_STREAM_FLAG_NO_CLOSE ;
 int ZEND_CONSTANT_SET_FLAGS (TYPE_1__*,int ,int ) ;
 int php_stream_close (TYPE_2__*) ;
 TYPE_2__* php_stream_open_wrapper_ex (char*,char*,int ,int *,int *) ;
 int php_stream_to_zval (TYPE_2__*,int *) ;
 TYPE_2__* s_in_process ;
 int zend_register_constant (TYPE_1__*) ;
 void* zend_string_init_interned (char*,int,int ) ;

__attribute__((used)) static void cli_register_file_handles(void)
{
 php_stream *s_in, *s_out, *s_err;
 php_stream_context *sc_in=((void*)0), *sc_out=((void*)0), *sc_err=((void*)0);
 zend_constant ic, oc, ec;

 s_in = php_stream_open_wrapper_ex("php://stdin", "rb", 0, ((void*)0), sc_in);
 s_out = php_stream_open_wrapper_ex("php://stdout", "wb", 0, ((void*)0), sc_out);
 s_err = php_stream_open_wrapper_ex("php://stderr", "wb", 0, ((void*)0), sc_err);

 if (s_in==((void*)0) || s_out==((void*)0) || s_err==((void*)0)) {
  if (s_in) php_stream_close(s_in);
  if (s_out) php_stream_close(s_out);
  if (s_err) php_stream_close(s_err);
  return;
 }







 s_in_process = s_in;

 php_stream_to_zval(s_in, &ic.value);
 php_stream_to_zval(s_out, &oc.value);
 php_stream_to_zval(s_err, &ec.value);

 ZEND_CONSTANT_SET_FLAGS(&ic, CONST_CS, 0);
 ic.name = zend_string_init_interned("STDIN", sizeof("STDIN")-1, 0);
 zend_register_constant(&ic);

 ZEND_CONSTANT_SET_FLAGS(&oc, CONST_CS, 0);
 oc.name = zend_string_init_interned("STDOUT", sizeof("STDOUT")-1, 0);
 zend_register_constant(&oc);

 ZEND_CONSTANT_SET_FLAGS(&ec, CONST_CS, 0);
 ec.name = zend_string_init_interned("STDERR", sizeof("STDERR")-1, 0);
 zend_register_constant(&ec);
}
