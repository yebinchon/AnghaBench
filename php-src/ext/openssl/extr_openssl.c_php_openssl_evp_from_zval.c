
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int zval ;
struct TYPE_7__ {scalar_t__ type; } ;
typedef TYPE_1__ zend_resource ;
struct php_openssl_pem_password {char* key; size_t len; } ;
typedef int X509 ;
typedef int EVP_PKEY ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_file (char*,int ) ;
 int * BIO_new_mem_buf (char*,int) ;
 int E_WARNING ;
 scalar_t__ IS_ARRAY ;
 scalar_t__ IS_OBJECT ;
 scalar_t__ IS_RESOURCE ;
 scalar_t__ IS_STRING ;
 int * PEM_read_bio_PUBKEY (int *,int *,int *,int *) ;
 int * PEM_read_bio_PrivateKey (int *,int *,int *,struct php_openssl_pem_password*) ;
 int PHP_OPENSSL_BIO_MODE_R (int ) ;
 int PKCS7_BINARY ;
 int TMP_CLEAN ;
 int X509_free (int *) ;
 scalar_t__ X509_get_pubkey (int *) ;
 int ZVAL_COPY (int *,int *) ;
 int ZVAL_NULL (int *) ;
 int Z_ADDREF_P (int *) ;
 int Z_ARRVAL_P (int *) ;
 TYPE_1__* Z_RES_P (int *) ;
 size_t Z_STRLEN (int ) ;
 int Z_STRLEN_P (int *) ;
 char* Z_STRVAL (int ) ;
 char* Z_STRVAL_P (int *) ;
 scalar_t__ Z_TYPE (int ) ;
 scalar_t__ Z_TYPE_P (int *) ;
 scalar_t__ le_key ;
 scalar_t__ le_x509 ;
 scalar_t__ memcmp (char*,char*,int) ;
 int php_error_docref (int *,int ,char*) ;
 int php_openssl_is_private_key (int *) ;
 scalar_t__ php_openssl_open_base_dir_chk (char*) ;
 int * php_openssl_pem_password_cb ;
 int php_openssl_store_errors () ;
 int * php_openssl_x509_from_zval (int *,int ,TYPE_1__**) ;
 int try_convert_to_string (int *) ;
 void* zend_fetch_resource2 (TYPE_1__*,char*,scalar_t__,scalar_t__) ;
 int * zend_hash_index_find (int ,int) ;
 TYPE_1__* zend_register_resource (int *,scalar_t__) ;
 int zval_ptr_dtor_str (int *) ;

__attribute__((used)) static EVP_PKEY * php_openssl_evp_from_zval(
  zval * val, int public_key, char *passphrase, size_t passphrase_len,
  int makeresource, zend_resource **resourceval)
{
 EVP_PKEY * key = ((void*)0);
 X509 * cert = ((void*)0);
 int free_cert = 0;
 zend_resource *cert_res = ((void*)0);
 char * filename = ((void*)0);
 zval tmp;

 ZVAL_NULL(&tmp);







 if (resourceval) {
  *resourceval = ((void*)0);
 }
 if (Z_TYPE_P(val) == IS_ARRAY) {
  zval * zphrase;



  if ((zphrase = zend_hash_index_find(Z_ARRVAL_P(val), 1)) == ((void*)0)) {
   php_error_docref(((void*)0), E_WARNING, "key array must be of the form array(0 => key, 1 => phrase)");
   return ((void*)0);
  }

  if (Z_TYPE_P(zphrase) == IS_STRING) {
   passphrase = Z_STRVAL_P(zphrase);
   passphrase_len = Z_STRLEN_P(zphrase);
  } else {
   ZVAL_COPY(&tmp, zphrase);
   if (!try_convert_to_string(&tmp)) {
    return ((void*)0);
   }

   passphrase = Z_STRVAL(tmp);
   passphrase_len = Z_STRLEN(tmp);
  }


  if ((val = zend_hash_index_find(Z_ARRVAL_P(val), 0)) == ((void*)0)) {
   php_error_docref(((void*)0), E_WARNING, "key array must be of the form array(0 => key, 1 => phrase)");
   if (Z_TYPE(tmp) == IS_STRING) { zval_ptr_dtor_str(&tmp); } return ((void*)0);;
  }
 }

 if (Z_TYPE_P(val) == IS_RESOURCE) {
  void * what;
  zend_resource * res = Z_RES_P(val);

  what = zend_fetch_resource2(res, "OpenSSL X.509/key", le_x509, le_key);
  if (!what) {
   if (Z_TYPE(tmp) == IS_STRING) { zval_ptr_dtor_str(&tmp); } return ((void*)0);;
  }
  if (resourceval) {
   *resourceval = res;
   Z_ADDREF_P(val);
  }
  if (res->type == le_x509) {

   cert = (X509*)what;
   free_cert = 0;
  } else if (res->type == le_key) {
   int is_priv;

   is_priv = php_openssl_is_private_key((EVP_PKEY*)what);


   if (!public_key && !is_priv) {
    php_error_docref(((void*)0), E_WARNING, "supplied key param is a public key");
    if (Z_TYPE(tmp) == IS_STRING) { zval_ptr_dtor_str(&tmp); } return ((void*)0);;
   }

   if (public_key && is_priv) {
    php_error_docref(((void*)0), E_WARNING, "Don't know how to get public key from this private key");
    if (Z_TYPE(tmp) == IS_STRING) { zval_ptr_dtor_str(&tmp); } return ((void*)0);;
   } else {
    if (Z_TYPE(tmp) == IS_STRING) {
     zval_ptr_dtor_str(&tmp);
    }

    return (EVP_PKEY*)what;
   }
  } else {

   if (Z_TYPE(tmp) == IS_STRING) { zval_ptr_dtor_str(&tmp); } return ((void*)0);;
  }
 } else {




  if (!(Z_TYPE_P(val) == IS_STRING || Z_TYPE_P(val) == IS_OBJECT)) {
   if (Z_TYPE(tmp) == IS_STRING) { zval_ptr_dtor_str(&tmp); } return ((void*)0);;
  }
  if (!try_convert_to_string(val)) {
   if (Z_TYPE(tmp) == IS_STRING) { zval_ptr_dtor_str(&tmp); } return ((void*)0);;
  }

  if (Z_STRLEN_P(val) > 7 && memcmp(Z_STRVAL_P(val), "file://", sizeof("file://") - 1) == 0) {
   filename = Z_STRVAL_P(val) + (sizeof("file://") - 1);
   if (php_openssl_open_base_dir_chk(filename)) {
    if (Z_TYPE(tmp) == IS_STRING) { zval_ptr_dtor_str(&tmp); } return ((void*)0);;
   }
  }

  if (public_key) {
   cert = php_openssl_x509_from_zval(val, 0, &cert_res);
   free_cert = (cert_res == ((void*)0));

   if (!cert) {

    BIO* in;
    if (filename) {
     in = BIO_new_file(filename, PHP_OPENSSL_BIO_MODE_R(PKCS7_BINARY));
    } else {
     in = BIO_new_mem_buf(Z_STRVAL_P(val), (int)Z_STRLEN_P(val));
    }
    if (in == ((void*)0)) {
     php_openssl_store_errors();
     if (Z_TYPE(tmp) == IS_STRING) { zval_ptr_dtor_str(&tmp); } return ((void*)0);;
    }
    key = PEM_read_bio_PUBKEY(in, ((void*)0),((void*)0), ((void*)0));
    BIO_free(in);
   }
  } else {

   BIO *in;

   if (filename) {
    in = BIO_new_file(filename, PHP_OPENSSL_BIO_MODE_R(PKCS7_BINARY));
   } else {
    in = BIO_new_mem_buf(Z_STRVAL_P(val), (int)Z_STRLEN_P(val));
   }

   if (in == ((void*)0)) {
    if (Z_TYPE(tmp) == IS_STRING) { zval_ptr_dtor_str(&tmp); } return ((void*)0);;
   }
   if (passphrase == ((void*)0)) {
    key = PEM_read_bio_PrivateKey(in, ((void*)0), ((void*)0), ((void*)0));
   } else {
    struct php_openssl_pem_password password;
    password.key = passphrase;
    password.len = passphrase_len;
    key = PEM_read_bio_PrivateKey(in, ((void*)0), php_openssl_pem_password_cb, &password);
   }
   BIO_free(in);
  }
 }

 if (key == ((void*)0)) {
  php_openssl_store_errors();

  if (public_key && cert) {

   key = (EVP_PKEY *) X509_get_pubkey(cert);
   if (key == ((void*)0)) {
    php_openssl_store_errors();
   }
  }
 }

 if (free_cert && cert) {
  X509_free(cert);
 }
 if (key && makeresource && resourceval) {
  *resourceval = zend_register_resource(key, le_key);
 }
 if (Z_TYPE(tmp) == IS_STRING) {
  zval_ptr_dtor_str(&tmp);
 }
 return key;
}
