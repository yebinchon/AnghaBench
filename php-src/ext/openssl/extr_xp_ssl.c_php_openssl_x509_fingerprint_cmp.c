
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;
typedef int X509 ;


 int ZSTR_VAL (int *) ;
 int * php_openssl_x509_fingerprint (int *,char const*,int ) ;
 int strcasecmp (char const*,int ) ;
 int zend_string_release_ex (int *,int ) ;

__attribute__((used)) static int php_openssl_x509_fingerprint_cmp(X509 *peer, const char *method, const char *expected)
{
 zend_string *fingerprint;
 int result = -1;

 fingerprint = php_openssl_x509_fingerprint(peer, method, 0);
 if (fingerprint) {
  result = strcasecmp(expected, ZSTR_VAL(fingerprint));
  zend_string_release_ex(fingerprint, 0);
 }

 return result;
}
