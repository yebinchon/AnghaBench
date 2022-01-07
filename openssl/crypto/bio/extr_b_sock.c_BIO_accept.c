
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO_ADDR ;


 char* BIO_ADDR_hostname_string (int *,int) ;
 char* BIO_ADDR_service_string (int *,int) ;
 int BIO_F_BIO_ACCEPT ;
 int BIO_R_ACCEPT_ERROR ;
 int BIO_accept_ex (int,int *,int ) ;
 int BIO_closesocket (int) ;
 scalar_t__ BIO_sock_should_retry (int) ;
 int BIOerr (int ,int ) ;
 int ERR_LIB_SYS ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_raise_data (int ,int ,char*) ;
 scalar_t__ INVALID_SOCKET ;
 int OPENSSL_free (char*) ;
 char* OPENSSL_zalloc (scalar_t__) ;
 int get_last_socket_error () ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

int BIO_accept(int sock, char **ip_port)
{
    BIO_ADDR res;
    int ret = -1;

    ret = BIO_accept_ex(sock, &res, 0);
    if (ret == (int)INVALID_SOCKET) {
        if (BIO_sock_should_retry(ret)) {
            ret = -2;
            goto end;
        }
        ERR_raise_data(ERR_LIB_SYS, get_last_socket_error(),
                       "calling accept()");
        BIOerr(BIO_F_BIO_ACCEPT, BIO_R_ACCEPT_ERROR);
        goto end;
    }

    if (ip_port != ((void*)0)) {
        char *host = BIO_ADDR_hostname_string(&res, 1);
        char *port = BIO_ADDR_service_string(&res, 1);
        if (host != ((void*)0) && port != ((void*)0))
            *ip_port = OPENSSL_zalloc(strlen(host) + strlen(port) + 2);
        else
            *ip_port = ((void*)0);

        if (*ip_port == ((void*)0)) {
            BIOerr(BIO_F_BIO_ACCEPT, ERR_R_MALLOC_FAILURE);
            BIO_closesocket(ret);
            ret = (int)INVALID_SOCKET;
        } else {
            strcpy(*ip_port, host);
            strcat(*ip_port, ":");
            strcat(*ip_port, port);
        }
        OPENSSL_free(host);
        OPENSSL_free(port);
    }

 end:
    return ret;
}
