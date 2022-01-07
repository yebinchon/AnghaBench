
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* SSL_alert_desc_string_long (int) ;

__attribute__((used)) static const char *print_alert(int alert)
{
    return alert ? SSL_alert_desc_string_long(alert) : "no alert";
}
