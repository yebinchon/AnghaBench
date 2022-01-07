
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutex_t ;
typedef int PGconn ;


 int * CRYPTO_get_id_callback () ;
 int * CRYPTO_get_locking_callback () ;
 int CRYPTO_num_locks () ;
 int CRYPTO_set_id_callback (int ) ;
 int CRYPTO_set_locking_callback (int ) ;
 int InterlockedExchange (int *,int) ;
 int OPENSSL_INIT_LOAD_CONFIG ;
 int OPENSSL_config (int *) ;
 int OPENSSL_init_ssl (int ,int *) ;
 int SSL_library_init () ;
 int SSL_load_error_strings () ;
 int free (int **) ;
 int ** malloc (int) ;
 scalar_t__ pq_init_crypto_lib ;
 scalar_t__ pq_init_ssl_lib ;
 int ** pq_lockarray ;
 int pq_lockingcallback ;
 int pq_threadidcallback ;
 scalar_t__ pthread_mutex_init (int **,int *) ;
 scalar_t__ pthread_mutex_lock (int **) ;
 int pthread_mutex_unlock (int **) ;
 int * ssl_config_mutex ;
 int ssl_lib_initialized ;
 int ssl_open_connections ;
 int win32_ssl_create_mutex ;

int
pgtls_init(PGconn *conn)
{
 if (!ssl_lib_initialized)
 {
  if (pq_init_ssl_lib)
  {



   OPENSSL_config(((void*)0));
   SSL_library_init();
   SSL_load_error_strings();

  }
  ssl_lib_initialized = 1;
 }




 return 0;
}
