
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int auth_token_pem_name ;
 int write_pem_key_file (char const*,int ) ;

void
auth_token_write_server_key_file(const char *filename)
{
    write_pem_key_file(filename, auth_token_pem_name);
}
