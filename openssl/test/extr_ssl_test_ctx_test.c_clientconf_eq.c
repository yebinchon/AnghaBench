
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int max_fragment_len_mode; int ct_validation; int alpn_protocols; int npn_protocols; int servername; int verify_callback; } ;
typedef TYPE_1__ SSL_TEST_CLIENT_CONF ;


 int TEST_int_eq (int ,int ) ;
 int TEST_str_eq (int ,int ) ;

__attribute__((used)) static int clientconf_eq(SSL_TEST_CLIENT_CONF *conf1,
                         SSL_TEST_CLIENT_CONF *conf2)
{
    if (!TEST_int_eq(conf1->verify_callback, conf2->verify_callback)
            || !TEST_int_eq(conf1->servername, conf2->servername)
            || !TEST_str_eq(conf1->npn_protocols, conf2->npn_protocols)
            || !TEST_str_eq(conf1->alpn_protocols, conf2->alpn_protocols)
            || !TEST_int_eq(conf1->ct_validation, conf2->ct_validation)
            || !TEST_int_eq(conf1->max_fragment_len_mode,
                            conf2->max_fragment_len_mode))
        return 0;
    return 1;
}
