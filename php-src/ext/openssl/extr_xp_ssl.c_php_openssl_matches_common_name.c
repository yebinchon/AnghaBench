
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_bool ;
typedef int buf ;
typedef int X509_NAME ;
typedef int X509 ;


 int E_WARNING ;
 int NID_commonName ;
 int X509_NAME_get_text_by_NID (int *,int ,char*,int) ;
 int * X509_get_subject_name (int *) ;
 int php_error_docref (int *,int ,char*,...) ;
 scalar_t__ php_openssl_matches_wildcard_name (char const*,char*) ;
 size_t strlen (char*) ;

__attribute__((used)) static zend_bool php_openssl_matches_common_name(X509 *peer, const char *subject_name)
{
 char buf[1024];
 X509_NAME *cert_name;
 zend_bool is_match = 0;
 int cert_name_len;

 cert_name = X509_get_subject_name(peer);
 cert_name_len = X509_NAME_get_text_by_NID(cert_name, NID_commonName, buf, sizeof(buf));

 if (cert_name_len == -1) {
  php_error_docref(((void*)0), E_WARNING, "Unable to locate peer certificate CN");
 } else if ((size_t)cert_name_len != strlen(buf)) {
  php_error_docref(((void*)0), E_WARNING, "Peer certificate CN=`%.*s' is malformed", cert_name_len, buf);
 } else if (php_openssl_matches_wildcard_name(subject_name, buf)) {
  is_match = 1;
 } else {
  php_error_docref(((void*)0), E_WARNING,
   "Peer certificate CN=`%.*s' did not match expected CN=`%s'",
   cert_name_len, buf, subject_name);
 }

 return is_match;
}
