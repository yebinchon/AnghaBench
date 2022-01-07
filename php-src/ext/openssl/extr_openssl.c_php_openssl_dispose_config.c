
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct php_x509_request {int * req_config; int * global_config; int * priv_key; } ;


 int CONF_free (int *) ;
 int EVP_PKEY_free (int *) ;

__attribute__((used)) static void php_openssl_dispose_config(struct php_x509_request * req)
{
 if (req->priv_key) {
  EVP_PKEY_free(req->priv_key);
  req->priv_key = ((void*)0);
 }
 if (req->global_config) {
  CONF_free(req->global_config);
  req->global_config = ((void*)0);
 }
 if (req->req_config) {
  CONF_free(req->req_config);
  req->req_config = ((void*)0);
 }
}
