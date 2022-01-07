
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_array ;
typedef int SSL_CIPHER ;
typedef int SSL ;



 int SSL_CIPHER_get_bits (int const*,int *) ;
 scalar_t__ SSL_CIPHER_get_name (int const*) ;
 char* SSL_CIPHER_get_version (int const*) ;
 int * SSL_get_current_cipher (int *) ;
 long SSL_version (int *) ;




 int * Z_ARR (int ) ;
 int add_assoc_long (int *,char*,int ) ;
 int add_assoc_string (int *,char*,char*) ;
 int array_init (int *) ;

__attribute__((used)) static zend_array *php_openssl_capture_session_meta(SSL *ssl_handle)
{
 zval meta_arr;
 char *proto_str;
 long proto = SSL_version(ssl_handle);
 const SSL_CIPHER *cipher = SSL_get_current_cipher(ssl_handle);

 switch (proto) {
  case 128:
   proto_str = "TLSv1";
   break;





  default: proto_str = "UNKNOWN";
 }

 array_init(&meta_arr);
 add_assoc_string(&meta_arr, "protocol", proto_str);
 add_assoc_string(&meta_arr, "cipher_name", (char *) SSL_CIPHER_get_name(cipher));
 add_assoc_long(&meta_arr, "cipher_bits", SSL_CIPHER_get_bits(cipher, ((void*)0)));
 add_assoc_string(&meta_arr, "cipher_version", SSL_CIPHER_get_version(cipher));

 return Z_ARR(meta_arr);
}
