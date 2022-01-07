
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int serv ;
typedef int host ;
struct TYPE_7__ {int sin_port; int sin_addr; } ;
struct TYPE_8__ {TYPE_1__ s_in; } ;
typedef TYPE_2__ BIO_ADDR ;


 int BIO_ADDR_rawport (TYPE_2__ const*) ;
 int BIO_ADDR_sockaddr (TYPE_2__ const*) ;
 int BIO_ADDR_sockaddr_size (TYPE_2__ const*) ;
 int BIO_F_ADDR_STRINGS ;
 int BIO_snprintf (char*,int,char*,int ) ;
 int BIO_sock_init () ;
 int BIOerr (int ,int ) ;
 int EAI_SYSTEM ;
 int ERR_LIB_SYS ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_R_SYS_LIB ;
 int ERR_add_error_data (int,int ) ;
 int ERR_raise_data (int ,int ,char*) ;
 int NI_MAXHOST ;
 int NI_MAXSERV ;
 int NI_NUMERICHOST ;
 int NI_NUMERICSERV ;
 int OPENSSL_free (char*) ;
 char* OPENSSL_strdup (char*) ;
 int gai_strerror (int) ;
 int get_last_socket_error () ;
 int getnameinfo (int ,int ,char*,int,char*,int,int) ;
 char* inet_ntoa (int ) ;
 int ntohs (int ) ;

__attribute__((used)) static int addr_strings(const BIO_ADDR *ap, int numeric,
                        char **hostname, char **service)
{
    if (BIO_sock_init() != 1)
        return 0;

    if (1) {
        if (hostname != ((void*)0))
            *hostname = OPENSSL_strdup(inet_ntoa(ap->s_in.sin_addr));
        if (service != ((void*)0)) {
            char serv[6];
            BIO_snprintf(serv, sizeof(serv), "%d", ntohs(ap->s_in.sin_port));
            *service = OPENSSL_strdup(serv);
        }
    }

    if ((hostname != ((void*)0) && *hostname == ((void*)0))
            || (service != ((void*)0) && *service == ((void*)0))) {
        if (hostname != ((void*)0)) {
            OPENSSL_free(*hostname);
            *hostname = ((void*)0);
        }
        if (service != ((void*)0)) {
            OPENSSL_free(*service);
            *service = ((void*)0);
        }
        BIOerr(BIO_F_ADDR_STRINGS, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    return 1;
}
