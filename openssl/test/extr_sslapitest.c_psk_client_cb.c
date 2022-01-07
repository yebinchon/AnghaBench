
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 unsigned int SSL_SESSION_get_master_key (int *,unsigned char*,unsigned int) ;
 int * clientpsk ;
 int psk_client_cb_cnt ;
 int pskid ;
 int strlen (int ) ;
 int strncpy (char*,int ,unsigned int) ;

__attribute__((used)) static unsigned int psk_client_cb(SSL *ssl, const char *hint, char *id,
                                  unsigned int max_id_len,
                                  unsigned char *psk,
                                  unsigned int max_psk_len)
{
    unsigned int psklen = 0;

    psk_client_cb_cnt++;

    if (strlen(pskid) + 1 > max_id_len)
        return 0;


    if (psk_client_cb_cnt > 2)
        return 0;

    if (clientpsk == ((void*)0))
        return 0;


    if (SSL_SESSION_get_master_key(clientpsk, ((void*)0), 0) > max_psk_len)
        return 0;
    psklen = SSL_SESSION_get_master_key(clientpsk, psk, max_psk_len);
    strncpy(id, pskid, max_id_len);

    return psklen;
}
