
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CRYPTO_get_id_callback () ;
 scalar_t__ CRYPTO_get_locking_callback () ;
 int CRYPTO_set_id_callback (int *) ;
 int CRYPTO_set_locking_callback (int *) ;
 scalar_t__ pq_init_crypto_lib ;
 scalar_t__ pq_lockingcallback ;
 scalar_t__ pq_threadidcallback ;
 scalar_t__ pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int ssl_config_mutex ;
 scalar_t__ ssl_open_connections ;

__attribute__((used)) static void
destroy_ssl_system(void)
{
}
