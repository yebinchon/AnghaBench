
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sa_family_t ;


 int AF_UNSPEC ;
 int lwan_status_critical (char*) ;
 int parse_listener_ipv4 (char*,char**,char**) ;
 int parse_listener_ipv6 (char*,char**,char**) ;
 scalar_t__ streq (char*,char*) ;

__attribute__((used)) static sa_family_t parse_listener(char *listener, char **node, char **port)
{
    if (streq(listener, "systemd")) {
        lwan_status_critical(
            "Listener configured to use systemd socket activation, "
            "but started outside systemd.");
        return AF_UNSPEC;
    }

    if (*listener == '[')
        return parse_listener_ipv6(listener, node, port);

    return parse_listener_ipv4(listener, node, port);
}
