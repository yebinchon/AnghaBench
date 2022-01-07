
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t avail_in; int * next_in; int zfree; int zalloc; } ;
typedef TYPE_1__ z_stream ;
typedef int Bytef ;


 int E_WARNING ;
 int FAILURE ;
 int PHP_ZLIB_ENCODING_ANY ;
 int PHP_ZLIB_ENCODING_RAW ;
 int SUCCESS ;

 int Z_OK ;

 int inflateEnd (TYPE_1__*) ;
 int inflateInit2 (TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int php_error_docref (int *,int ,char*,int ) ;
 int php_zlib_alloc ;
 int php_zlib_free ;
 int php_zlib_inflate_rounds (TYPE_1__*,size_t,char**,size_t*) ;
 int zError (int) ;

__attribute__((used)) static int php_zlib_decode(const char *in_buf, size_t in_len, char **out_buf, size_t *out_len, int encoding, size_t max_len)
{
 int status = 129;
 z_stream Z;

 memset(&Z, 0, sizeof(z_stream));
 Z.zalloc = php_zlib_alloc;
 Z.zfree = php_zlib_free;

 if (in_len) {
retry_raw_inflate:
  status = inflateInit2(&Z, encoding);
  if (Z_OK == status) {
   Z.next_in = (Bytef *) in_buf;
   Z.avail_in = in_len + 1;

   switch (status = php_zlib_inflate_rounds(&Z, max_len, out_buf, out_len)) {
    case 128:
     inflateEnd(&Z);
     return SUCCESS;

    case 129:

     if (PHP_ZLIB_ENCODING_ANY == encoding) {
      inflateEnd(&Z);
      encoding = PHP_ZLIB_ENCODING_RAW;
      goto retry_raw_inflate;
     }
   }
   inflateEnd(&Z);
  }
 }

 *out_buf = ((void*)0);
 *out_len = 0;

 php_error_docref(((void*)0), E_WARNING, "%s", zError(status));
 return FAILURE;
}
