
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
typedef int ngx_int_t ;
typedef scalar_t__ in_port_t ;


 int ngx_atoi (scalar_t__*,size_t) ;

__attribute__((used)) static u_char *
ngx_proxy_protocol_read_port(u_char *p, u_char *last, in_port_t *port,
    u_char sep)
{
    size_t len;
    u_char *pos;
    ngx_int_t n;

    pos = p;

    for ( ;; ) {
        if (p == last) {
            return ((void*)0);
        }

        if (*p++ == sep) {
            break;
        }
    }

    len = p - pos - 1;

    n = ngx_atoi(pos, len);
    if (n < 0 || n > 65535) {
        return ((void*)0);
    }

    *port = (in_port_t) n;

    return p;
}
