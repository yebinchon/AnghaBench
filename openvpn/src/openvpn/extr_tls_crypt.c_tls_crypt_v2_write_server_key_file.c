
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tls_crypt_v2_srv_pem_name ;
 int write_pem_key_file (char const*,int ) ;

void
tls_crypt_v2_write_server_key_file(const char *filename)
{
    write_pem_key_file(filename, tls_crypt_v2_srv_pem_name);
}
