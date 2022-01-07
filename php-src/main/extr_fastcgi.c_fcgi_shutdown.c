
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ allowed_clients ;
 int fcgi_mgmt_vars ;
 int free (scalar_t__) ;
 scalar_t__ is_fastcgi ;
 scalar_t__ is_initialized ;
 int zend_hash_destroy (int *) ;

void fcgi_shutdown(void)
{
 if (is_initialized) {
  zend_hash_destroy(&fcgi_mgmt_vars);
 }
 is_fastcgi = 0;
 if (allowed_clients) {
  free(allowed_clients);
 }
}
