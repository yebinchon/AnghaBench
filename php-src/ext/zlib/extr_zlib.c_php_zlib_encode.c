
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int zend_string ;
struct TYPE_6__ {size_t avail_in; size_t avail_out; int total_out; int * next_out; int * next_in; int zfree; int zalloc; } ;
typedef TYPE_1__ z_stream ;
typedef int Bytef ;


 int E_WARNING ;
 int MAX_MEM_LEVEL ;
 int PHP_ZLIB_BUFFER_SIZE_GUESS (size_t) ;
 size_t ZSTR_LEN (int *) ;
 char* ZSTR_VAL (int *) ;
 int Z_DEFAULT_STRATEGY ;
 int Z_DEFLATED ;
 int Z_FINISH ;
 int Z_OK ;
 int Z_STREAM_END ;
 int deflate (TYPE_1__*,int ) ;
 int deflateEnd (TYPE_1__*) ;
 int deflateInit2 (TYPE_1__*,int,int ,int,int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int php_error_docref (int *,int ,char*,int ) ;
 int php_zlib_alloc ;
 int php_zlib_free ;
 int zError (int) ;
 int * zend_string_alloc (int ,int ) ;
 int zend_string_efree (int *) ;
 int * zend_string_truncate (int *,int ,int ) ;

__attribute__((used)) static zend_string *php_zlib_encode(const char *in_buf, size_t in_len, int encoding, int level)
{
 int status;
 z_stream Z;
 zend_string *out;

 memset(&Z, 0, sizeof(z_stream));
 Z.zalloc = php_zlib_alloc;
 Z.zfree = php_zlib_free;

 if (Z_OK == (status = deflateInit2(&Z, level, Z_DEFLATED, encoding, MAX_MEM_LEVEL, Z_DEFAULT_STRATEGY))) {
  out = zend_string_alloc(PHP_ZLIB_BUFFER_SIZE_GUESS(in_len), 0);

  Z.next_in = (Bytef *) in_buf;
  Z.next_out = (Bytef *) ZSTR_VAL(out);
  Z.avail_in = in_len;
  Z.avail_out = ZSTR_LEN(out);

  status = deflate(&Z, Z_FINISH);
  deflateEnd(&Z);

  if (Z_STREAM_END == status) {

   out = zend_string_truncate(out, Z.total_out, 0);
   ZSTR_VAL(out)[ZSTR_LEN(out)] = '\0';
   return out;
  } else {
   zend_string_efree(out);
  }
 }

 php_error_docref(((void*)0), E_WARNING, "%s", zError(status));
 return ((void*)0);
}
