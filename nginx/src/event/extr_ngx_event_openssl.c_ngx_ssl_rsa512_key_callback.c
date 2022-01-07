
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_ssl_conn_t ;
typedef int RSA ;


 int RSA_F4 ;
 int * RSA_generate_key (int,int ,int *,int *) ;

RSA *
ngx_ssl_rsa512_key_callback(ngx_ssl_conn_t *ssl_conn, int is_export,
    int key_length)
{
    static RSA *key;

    if (key_length != 512) {
        return ((void*)0);
    }



    if (key == ((void*)0)) {
        key = RSA_generate_key(512, RSA_F4, ((void*)0), ((void*)0));
    }



    return key;
}
