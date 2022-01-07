
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int master_key_length; scalar_t__ master_key; } ;
typedef TYPE_1__ SSL_SESSION ;
typedef int OSSL_PARAM ;


 int OSSL_DIGEST_PARAM_SSL3_MS ;
 int OSSL_PARAM_construct_end () ;
 int OSSL_PARAM_construct_octet_string (int ,void*,int ) ;

void ssl3_digest_master_key_set_params(const SSL_SESSION *session,
                                       OSSL_PARAM params[])
{
    int n = 0;
    params[n++] = OSSL_PARAM_construct_octet_string(OSSL_DIGEST_PARAM_SSL3_MS,
                                                    (void *)session->master_key,
                                                    session->master_key_length);
    params[n++] = OSSL_PARAM_construct_end();
}
