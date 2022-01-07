
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pq_init_crypto_lib ;
 int pq_init_ssl_lib ;
 scalar_t__ ssl_open_connections ;

void
pgtls_init_library(bool do_ssl, int do_crypto)
{
 pq_init_ssl_lib = do_ssl;
 pq_init_crypto_lib = do_crypto;
}
