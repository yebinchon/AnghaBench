
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int SSL ;


 unsigned char* OPENSSL_malloc (int) ;
 int SSL_is_server (int *) ;
 int clntaddnewcb ;
 int srvaddnewcb ;

__attribute__((used)) static int new_add_cb(SSL *s, unsigned int ext_type, unsigned int context,
                      const unsigned char **out, size_t *outlen, X509 *x,
                      size_t chainidx, int *al, void *add_arg)
{
    int *server = (int *)add_arg;
    unsigned char *data;

    if (SSL_is_server(s))
        srvaddnewcb++;
    else
        clntaddnewcb++;

    if (*server != SSL_is_server(s)
            || (data = OPENSSL_malloc(sizeof(*data))) == ((void*)0))
        return -1;

    *data = 1;
    *out = data;
    *outlen = sizeof(*data);
    return 1;
}
