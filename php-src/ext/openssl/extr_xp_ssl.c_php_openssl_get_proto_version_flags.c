
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PHP_OPENSSL_MAX_PROTO_VERSION ;
 int PHP_OPENSSL_MIN_PROTO_VERSION ;
 int php_openssl_get_max_proto_version_flag (int) ;
 int php_openssl_get_min_proto_version_flag (int) ;

__attribute__((used)) static int php_openssl_get_proto_version_flags(int flags, int min, int max)
{
 int ver;

 if (!min) {
  min = php_openssl_get_min_proto_version_flag(flags);
 }
 if (!max) {
  max = php_openssl_get_max_proto_version_flag(flags);
 }

 for (ver = PHP_OPENSSL_MIN_PROTO_VERSION; ver <= PHP_OPENSSL_MAX_PROTO_VERSION; ver <<= 1) {
  if (ver >= min && ver <= max) {
   if (!(flags & ver)) {
    flags |= ver;
   }
  } else if (flags & ver) {
   flags &= ~ver;
  }
 }

 return flags;
}
