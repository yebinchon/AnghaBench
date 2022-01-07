
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_TICKET_STATUS ;
typedef int SSL_TICKET_RETURN ;
typedef int SSL_SESSION ;
typedef int SSL ;


 int SSL_SESSION_get0_ticket_appdata (int *,void**,size_t*) ;
 int SSL_TICKET_EMPTY ;

 int SSL_TICKET_RETURN_ABORT ;
 int SSL_TICKET_RETURN_IGNORE_RENEW ;
 int SSL_TICKET_RETURN_USE ;
 int SSL_TICKET_RETURN_USE_RENEW ;


 int TEST_int_eq (int ,int ) ;
 int TEST_size_t_eq (size_t,int ) ;
 int TEST_true (int) ;
 int appdata ;
 int dec_tick_called ;
 int memcmp (void*,int ,size_t) ;
 int strlen (int ) ;
 int tick_dec_ret ;
 scalar_t__ tick_key_cb_called ;

__attribute__((used)) static SSL_TICKET_RETURN dec_tick_cb(SSL *s, SSL_SESSION *ss,
                                     const unsigned char *keyname,
                                     size_t keyname_length,
                                     SSL_TICKET_STATUS status,
                                     void *arg)
{
    void *tickdata;
    size_t tickdlen;

    dec_tick_called = 1;

    if (status == SSL_TICKET_EMPTY)
        return SSL_TICKET_RETURN_IGNORE_RENEW;

    if (!TEST_true(status == 129
                   || status == 128))
        return SSL_TICKET_RETURN_ABORT;

    if (!TEST_true(SSL_SESSION_get0_ticket_appdata(ss, &tickdata,
                                                   &tickdlen))
            || !TEST_size_t_eq(tickdlen, strlen(appdata))
            || !TEST_int_eq(memcmp(tickdata, appdata, tickdlen), 0))
        return SSL_TICKET_RETURN_ABORT;

    if (tick_key_cb_called) {

        switch (status) {
        case 130:
            return SSL_TICKET_RETURN_IGNORE_RENEW;

        case 129:
            return SSL_TICKET_RETURN_USE;

        case 128:
            return SSL_TICKET_RETURN_USE_RENEW;

        default:
            return SSL_TICKET_RETURN_ABORT;
        }
    }
    return tick_dec_ret;

}
