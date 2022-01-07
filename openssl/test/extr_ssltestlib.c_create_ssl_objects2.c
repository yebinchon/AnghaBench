
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;
typedef int SSL ;
typedef int BIO ;


 int BIO_NOCLOSE ;
 int BIO_free (int *) ;
 int * BIO_new_socket (int,int ) ;
 int SSL_free (int *) ;
 int * SSL_new (int *) ;
 int SSL_set_bio (int *,int *,int *) ;
 int TEST_ptr (int *) ;

int create_ssl_objects2(SSL_CTX *serverctx, SSL_CTX *clientctx, SSL **sssl,
                          SSL **cssl, int sfd, int cfd)
{
    SSL *serverssl = ((void*)0), *clientssl = ((void*)0);
    BIO *s_to_c_bio = ((void*)0), *c_to_s_bio = ((void*)0);

    if (*sssl != ((void*)0))
        serverssl = *sssl;
    else if (!TEST_ptr(serverssl = SSL_new(serverctx)))
        goto error;
    if (*cssl != ((void*)0))
        clientssl = *cssl;
    else if (!TEST_ptr(clientssl = SSL_new(clientctx)))
        goto error;

    if (!TEST_ptr(s_to_c_bio = BIO_new_socket(sfd, BIO_NOCLOSE))
            || !TEST_ptr(c_to_s_bio = BIO_new_socket(cfd, BIO_NOCLOSE)))
        goto error;

    SSL_set_bio(clientssl, c_to_s_bio, c_to_s_bio);
    SSL_set_bio(serverssl, s_to_c_bio, s_to_c_bio);
    *sssl = serverssl;
    *cssl = clientssl;
    return 1;

 error:
    SSL_free(serverssl);
    SSL_free(clientssl);
    BIO_free(s_to_c_bio);
    BIO_free(c_to_s_bio);
    return 0;
}
