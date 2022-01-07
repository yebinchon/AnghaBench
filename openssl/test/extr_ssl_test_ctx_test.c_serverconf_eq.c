
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cert_status; int session_ticket_app_data; int broken_session_ticket; int alpn_protocols; int npn_protocols; int servername_callback; } ;
typedef TYPE_1__ SSL_TEST_SERVER_CONF ;


 int TEST_int_eq (int ,int ) ;
 int TEST_str_eq (int ,int ) ;

__attribute__((used)) static int serverconf_eq(SSL_TEST_SERVER_CONF *serv,
                         SSL_TEST_SERVER_CONF *serv2)
{
    if (!TEST_int_eq(serv->servername_callback, serv2->servername_callback)
            || !TEST_str_eq(serv->npn_protocols, serv2->npn_protocols)
            || !TEST_str_eq(serv->alpn_protocols, serv2->alpn_protocols)
            || !TEST_int_eq(serv->broken_session_ticket,
                            serv2->broken_session_ticket)
            || !TEST_str_eq(serv->session_ticket_app_data,
                            serv2->session_ticket_app_data)
            || !TEST_int_eq(serv->cert_status, serv2->cert_status))
        return 0;
    return 1;
}
