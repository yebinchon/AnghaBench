
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int BIO_printf (int ,char*,char const*,int ,...) ;
 int SSL_CB_ALERT ;
 int SSL_CB_EXIT ;
 int SSL_CB_LOOP ;
 int SSL_CB_READ ;
 int SSL_ST_ACCEPT ;
 int SSL_ST_CONNECT ;
 int SSL_ST_MASK ;
 int SSL_alert_desc_string_long (int) ;
 int SSL_alert_type_string_long (int) ;
 int SSL_state_string_long (int const*) ;
 int bio_err ;

void apps_ssl_info_callback(const SSL *s, int where, int ret)
{
    const char *str;
    int w;

    w = where & ~SSL_ST_MASK;

    if (w & SSL_ST_CONNECT)
        str = "SSL_connect";
    else if (w & SSL_ST_ACCEPT)
        str = "SSL_accept";
    else
        str = "undefined";

    if (where & SSL_CB_LOOP) {
        BIO_printf(bio_err, "%s:%s\n", str, SSL_state_string_long(s));
    } else if (where & SSL_CB_ALERT) {
        str = (where & SSL_CB_READ) ? "read" : "write";
        BIO_printf(bio_err, "SSL3 alert %s:%s:%s\n",
                   str,
                   SSL_alert_type_string_long(ret),
                   SSL_alert_desc_string_long(ret));
    } else if (where & SSL_CB_EXIT) {
        if (ret == 0)
            BIO_printf(bio_err, "%s:failed in %s\n",
                       str, SSL_state_string_long(s));
        else if (ret < 0)
            BIO_printf(bio_err, "%s:error in %s\n",
                       str, SSL_state_string_long(s));
    }
}
