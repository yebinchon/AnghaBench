
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 unsigned char* OPENSSL_malloc (int) ;
 int SSL_is_server (int *) ;
 int clntaddoldcb ;
 int srvaddoldcb ;

__attribute__((used)) static int old_add_cb(SSL *s, unsigned int ext_type, const unsigned char **out,
                      size_t *outlen, int *al, void *add_arg)
{
    int *server = (int *)add_arg;
    unsigned char *data;

    if (SSL_is_server(s))
        srvaddoldcb++;
    else
        clntaddoldcb++;

    if (*server != SSL_is_server(s)
            || (data = OPENSSL_malloc(sizeof(*data))) == ((void*)0))
        return -1;

    *data = 1;
    *out = data;
    *outlen = sizeof(char);
    return 1;
}
