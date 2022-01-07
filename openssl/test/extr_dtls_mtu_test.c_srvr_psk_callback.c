
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int memset (unsigned char*,int,unsigned int) ;

__attribute__((used)) static unsigned int srvr_psk_callback(SSL *ssl, const char *identity,
                                      unsigned char *psk,
                                      unsigned int max_psk_len)
{
    if (max_psk_len > 20)
        max_psk_len = 20;
    memset(psk, 0x5a, max_psk_len);
    return max_psk_len;
}
