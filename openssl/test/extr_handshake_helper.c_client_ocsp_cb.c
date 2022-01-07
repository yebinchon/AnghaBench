
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int SSL_get_tlsext_status_ocsp_resp (int *,unsigned char const**) ;
 unsigned char const dummy_ocsp_resp_good_val ;

__attribute__((used)) static int client_ocsp_cb(SSL *s, void *arg)
{
    const unsigned char *resp;
    int len;

    len = SSL_get_tlsext_status_ocsp_resp(s, &resp);
    if (len != 1 || *resp != dummy_ocsp_resp_good_val)
        return 0;

    return 1;
}
