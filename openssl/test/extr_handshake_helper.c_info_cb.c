
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int alert_sent; int alert_received; int num_fatal_alerts_sent; } ;
typedef int SSL ;
typedef TYPE_1__ HANDSHAKE_EX_DATA ;


 int SSL_CB_ALERT ;
 int SSL_CB_WRITE ;
 int SSL_alert_desc_string (int) ;
 int SSL_alert_type_string (int) ;
 scalar_t__ SSL_get_ex_data (int const*,int ) ;
 int ex_data_idx ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void info_cb(const SSL *s, int where, int ret)
{
    if (where & SSL_CB_ALERT) {
        HANDSHAKE_EX_DATA *ex_data =
            (HANDSHAKE_EX_DATA*)(SSL_get_ex_data(s, ex_data_idx));
        if (where & SSL_CB_WRITE) {
            ex_data->alert_sent = ret;
            if (strcmp(SSL_alert_type_string(ret), "F") == 0
                || strcmp(SSL_alert_desc_string(ret), "CN") == 0)
                ex_data->num_fatal_alerts_sent++;
        } else {
            ex_data->alert_received = ret;
        }
    }
}
