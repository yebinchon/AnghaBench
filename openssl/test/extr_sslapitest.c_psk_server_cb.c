
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 unsigned int SSL_SESSION_get_master_key (int *,unsigned char*,unsigned int) ;
 int find_session_cb_cnt ;
 int psk_server_cb_cnt ;
 int * serverpsk ;
 int srvid ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static unsigned int psk_server_cb(SSL *ssl, const char *identity,
                                  unsigned char *psk, unsigned int max_psk_len)
{
    unsigned int psklen = 0;

    psk_server_cb_cnt++;


    if (find_session_cb_cnt > 2)
        return 0;

    if (serverpsk == ((void*)0))
        return 0;


    if (strcmp(srvid, identity) != 0) {
        return 0;
    }


    if (SSL_SESSION_get_master_key(serverpsk, ((void*)0), 0) > max_psk_len)
        return 0;
    psklen = SSL_SESSION_get_master_key(serverpsk, psk, max_psk_len);

    return psklen;
}
