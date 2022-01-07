
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* zval ;
struct TYPE_8__ {void* name; void* value; } ;
typedef TYPE_1__ zend_constant ;
typedef int php_stream_context ;
struct TYPE_9__ {int flags; } ;
typedef TYPE_2__ php_stream ;


 int CONST_CS ;
 int EG (int ) ;
 int PHP_STREAM_FLAG_NO_CLOSE ;
 int ZEND_CONSTANT_SET_FLAGS (TYPE_1__*,int ,int ) ;
 int ZEND_STRL (char*) ;
 int php_stream_close (TYPE_2__*) ;
 TYPE_2__* php_stream_open_wrapper_ex (char*,char*,int ,int *,int *) ;
 int php_stream_to_zval (TYPE_2__*,void**) ;
 int zend_constants ;
 int zend_hash_del (int ,void*) ;
 int zend_register_constant (TYPE_1__*) ;
 void* zend_string_init (int ,int ) ;

void phpdbg_register_file_handles(void)
{
 zval zin, zout, zerr;
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







 php_stream_to_zval(s_in, &zin);
 php_stream_to_zval(s_out, &zout);
 php_stream_to_zval(s_err, &zerr);

 ic.value = zin;
 ZEND_CONSTANT_SET_FLAGS(&ic, CONST_CS, 0);
 ic.name = zend_string_init(ZEND_STRL("STDIN"), 0);
 zend_hash_del(EG(zend_constants), ic.name);
 zend_register_constant(&ic);

 oc.value = zout;
 ZEND_CONSTANT_SET_FLAGS(&oc, CONST_CS, 0);
 oc.name = zend_string_init(ZEND_STRL("STDOUT"), 0);
 zend_hash_del(EG(zend_constants), oc.name);
 zend_register_constant(&oc);

 ec.value = zerr;
 ZEND_CONSTANT_SET_FLAGS(&ec, CONST_CS, 0);
 ec.name = zend_string_init(ZEND_STRL("STDERR"), 0);
 zend_hash_del(EG(zend_constants), ec.name);
 zend_register_constant(&ec);
}
