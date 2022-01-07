
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_SESSION ;
typedef int SSL ;


 int SSL_SESSION_up_ref (int *) ;
 int find_session_cb_cnt ;
 int * serverpsk ;
 int srvid ;
 size_t strlen (int ) ;
 scalar_t__ strncmp (int ,char const*,size_t) ;

__attribute__((used)) static int find_session_cb(SSL *ssl, const unsigned char *identity,
                           size_t identity_len, SSL_SESSION **sess)
{
    find_session_cb_cnt++;


    if (find_session_cb_cnt > 2)
        return 0;

    if (serverpsk == ((void*)0))
        return 0;


    if (strlen(srvid) != identity_len
            || strncmp(srvid, (const char *)identity, identity_len) != 0) {

        *sess = ((void*)0);
        return 1;
    }

    SSL_SESSION_up_ref(serverpsk);
    *sess = serverpsk;

    return 1;
}
