
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int client_random; } ;
struct TYPE_6__ {TYPE_1__ s3; } ;
typedef TYPE_2__ SSL ;


 int SSL3_RANDOM_SIZE ;
 int nss_keylog_int (char const*,TYPE_2__*,int ,int ,int const*,size_t) ;

int ssl_log_secret(SSL *ssl,
                   const char *label,
                   const uint8_t *secret,
                   size_t secret_len)
{
    return nss_keylog_int(label,
                          ssl,
                          ssl->s3.client_random,
                          SSL3_RANDOM_SIZE,
                          secret,
                          secret_len);
}
