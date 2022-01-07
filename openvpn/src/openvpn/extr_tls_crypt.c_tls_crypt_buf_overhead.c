
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TLS_CRYPT_BLOCK_SIZE ;
 int TLS_CRYPT_TAG_SIZE ;
 int packet_id_size (int) ;

int
tls_crypt_buf_overhead(void)
{
    return packet_id_size(1) + TLS_CRYPT_TAG_SIZE + TLS_CRYPT_BLOCK_SIZE;
}
