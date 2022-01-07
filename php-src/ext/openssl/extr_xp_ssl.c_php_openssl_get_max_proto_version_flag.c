
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PHP_OPENSSL_MAX_PROTO_VERSION ;
 int PHP_OPENSSL_MIN_PROTO_VERSION ;
 int STREAM_CRYPTO_METHOD_TLSv1_3 ;

__attribute__((used)) static inline int php_openssl_get_max_proto_version_flag(int flags)
{
 int ver;
 for (ver = PHP_OPENSSL_MAX_PROTO_VERSION; ver >= PHP_OPENSSL_MIN_PROTO_VERSION; ver >>= 1) {
  if (flags & ver) {
   return ver;
  }
 }
 return STREAM_CRYPTO_METHOD_TLSv1_3;
}
