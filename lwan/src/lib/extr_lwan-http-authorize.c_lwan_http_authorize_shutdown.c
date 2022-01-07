
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cache_destroy (int ) ;
 int realm_password_cache ;

void lwan_http_authorize_shutdown(void) { cache_destroy(realm_password_cache); }
