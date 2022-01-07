
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_long ;
struct php_x509_request {char* config_filename; char* section_name; char* digest_name; char* extensions_section; char* request_extensions_section; int priv_key_encrypt; int * req_config; int curve_name; int * digest; int * md_alg; int const* priv_key_encrypt_cipher; int priv_key_type; int priv_key_bits; int * global_config; } ;
typedef int EVP_CIPHER ;
typedef int BIO ;


 int ASN1_STRING_set_default_mask_asc (char*) ;
 int BIO_free (int *) ;
 int * BIO_new_file (char*,int ) ;
 int CONF_get_number (int *,char*,char*) ;
 char* CONF_get_string (int *,char*,char*) ;
 void* CONF_load (int *,char*,int *) ;
 int * EVP_get_digestbyname (char*) ;
 int * EVP_sha1 () ;
 int E_WARNING ;
 int FAILURE ;
 scalar_t__ IS_LONG ;
 scalar_t__ IS_STRING ;
 scalar_t__ IS_TRUE ;
 int NID_undef ;
 int OBJ_create_objects (int *) ;
 int OBJ_sn2nid (char*) ;
 int OPENSSL_KEYTYPE_DEFAULT ;
 int PHP_OPENSSL_BIO_MODE_R (int ) ;
 int PHP_SSL_CONFIG_SYNTAX_CHECK (int ) ;
 int PKCS7_BINARY ;
 int SET_OPTIONAL_LONG_ARG (char*,int ,int ) ;
 int SET_OPTIONAL_STRING_ARG (char*,char*,char*) ;
 int SUCCESS ;
 int Z_ARRVAL_P (int *) ;
 int Z_LVAL_P (int *) ;
 char* Z_STRVAL_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 char* default_ssl_conf_filename ;
 int extensions_section ;
 int php_error_docref (int *,int ,char*,...) ;
 int php_openssl_add_oid_section (struct php_x509_request*) ;
 int * php_openssl_get_evp_cipher_from_algo (int ) ;
 int php_openssl_open_base_dir_chk (char*) ;
 int php_openssl_store_errors () ;
 int request_extensions_section ;
 scalar_t__ strcmp (char*,char*) ;
 int * zend_hash_str_find (int ,char*,int) ;

__attribute__((used)) static int php_openssl_parse_config(struct php_x509_request * req, zval * optional_args)
{
 char * str;
 zval * item;

 SET_OPTIONAL_STRING_ARG("config", req->config_filename, default_ssl_conf_filename);
 SET_OPTIONAL_STRING_ARG("config_section_name", req->section_name, "req");
 req->global_config = CONF_load(((void*)0), default_ssl_conf_filename, ((void*)0));
 if (req->global_config == ((void*)0)) {
  php_openssl_store_errors();
 }
 req->req_config = CONF_load(((void*)0), req->config_filename, ((void*)0));
 if (req->req_config == ((void*)0)) {
  php_openssl_store_errors();
  return FAILURE;
 }


 str = CONF_get_string(req->req_config, ((void*)0), "oid_file");
 if (str == ((void*)0)) {
  php_openssl_store_errors();
 } else if (!php_openssl_open_base_dir_chk(str)) {
  BIO *oid_bio = BIO_new_file(str, PHP_OPENSSL_BIO_MODE_R(PKCS7_BINARY));
  if (oid_bio) {
   OBJ_create_objects(oid_bio);
   BIO_free(oid_bio);
   php_openssl_store_errors();
  }
 }
 if (php_openssl_add_oid_section(req) == FAILURE) {
  return FAILURE;
 }
 SET_OPTIONAL_STRING_ARG("digest_alg", req->digest_name,
  CONF_get_string(req->req_config, req->section_name, "default_md"));
 SET_OPTIONAL_STRING_ARG("x509_extensions", req->extensions_section,
  CONF_get_string(req->req_config, req->section_name, "x509_extensions"));
 SET_OPTIONAL_STRING_ARG("req_extensions", req->request_extensions_section,
  CONF_get_string(req->req_config, req->section_name, "req_extensions"));
 SET_OPTIONAL_LONG_ARG("private_key_bits", req->priv_key_bits,
  CONF_get_number(req->req_config, req->section_name, "default_bits"));

 SET_OPTIONAL_LONG_ARG("private_key_type", req->priv_key_type, OPENSSL_KEYTYPE_DEFAULT);

 if (optional_args && (item = zend_hash_str_find(Z_ARRVAL_P(optional_args), "encrypt_key", sizeof("encrypt_key")-1)) != ((void*)0)) {
  req->priv_key_encrypt = Z_TYPE_P(item) == IS_TRUE ? 1 : 0;
 } else {
  str = CONF_get_string(req->req_config, req->section_name, "encrypt_rsa_key");
  if (str == ((void*)0)) {
   str = CONF_get_string(req->req_config, req->section_name, "encrypt_key");

   php_openssl_store_errors();
  }
  if (str != ((void*)0) && strcmp(str, "no") == 0) {
   req->priv_key_encrypt = 0;
  } else {
   req->priv_key_encrypt = 1;
  }
 }

 if (req->priv_key_encrypt &&
  optional_args &&
  (item = zend_hash_str_find(Z_ARRVAL_P(optional_args), "encrypt_key_cipher", sizeof("encrypt_key_cipher")-1)) != ((void*)0) &&
  Z_TYPE_P(item) == IS_LONG
 ) {
  zend_long cipher_algo = Z_LVAL_P(item);
  const EVP_CIPHER* cipher = php_openssl_get_evp_cipher_from_algo(cipher_algo);
  if (cipher == ((void*)0)) {
   php_error_docref(((void*)0), E_WARNING, "Unknown cipher algorithm for private key.");
   return FAILURE;
  } else {
   req->priv_key_encrypt_cipher = cipher;
  }
 } else {
  req->priv_key_encrypt_cipher = ((void*)0);
 }


 if (req->digest_name == ((void*)0)) {
  req->digest_name = CONF_get_string(req->req_config, req->section_name, "default_md");
 }
 if (req->digest_name != ((void*)0)) {
  req->digest = req->md_alg = EVP_get_digestbyname(req->digest_name);
 } else {
  php_openssl_store_errors();
 }
 if (req->md_alg == ((void*)0)) {
  req->md_alg = req->digest = EVP_sha1();
  php_openssl_store_errors();
 }

 PHP_SSL_CONFIG_SYNTAX_CHECK(extensions_section);
 str = CONF_get_string(req->req_config, req->section_name, "string_mask");
 if (str == ((void*)0)) {
  php_openssl_store_errors();
 } else if (!ASN1_STRING_set_default_mask_asc(str)) {
  php_error_docref(((void*)0), E_WARNING, "Invalid global string mask setting %s", str);
  return FAILURE;
 }

 PHP_SSL_CONFIG_SYNTAX_CHECK(request_extensions_section);

 return SUCCESS;
}
