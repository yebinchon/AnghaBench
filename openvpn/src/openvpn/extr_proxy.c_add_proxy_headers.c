
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char const* user_agent; TYPE_1__* custom_headers; } ;
struct http_proxy_info {TYPE_2__ options; } ;
typedef int socket_descriptor_t ;
typedef int buf ;
struct TYPE_3__ {char const* name; scalar_t__ content; } ;


 int D_PROXY ;
 int MAX_CUSTOM_HTTP_HEADER ;
 int msg (int ,char*,char*) ;
 int openvpn_snprintf (char*,int,char*,char const*,...) ;
 int send_line_crlf (int ,char*) ;
 int strcasecmp (char const*,char*) ;
 int strncasecmp (char const*,char*,int) ;

__attribute__((used)) static bool
add_proxy_headers(struct http_proxy_info *p,
                  socket_descriptor_t sd,
                  const char *host,
                  const char *port
                  )
{
    char buf[512];
    int i;
    bool host_header_sent = 0;






    for (i = 0; i < MAX_CUSTOM_HTTP_HEADER && p->options.custom_headers[i].name; i++)
    {
        if (p->options.custom_headers[i].content)
        {
            openvpn_snprintf(buf, sizeof(buf), "%s: %s",
                             p->options.custom_headers[i].name,
                             p->options.custom_headers[i].content);
            if (!strcasecmp(p->options.custom_headers[i].name, "Host"))
            {
                host_header_sent = 1;
            }
        }
        else
        {
            openvpn_snprintf(buf, sizeof(buf), "%s",
                             p->options.custom_headers[i].name);
            if (!strncasecmp(p->options.custom_headers[i].name, "Host:", 5))
            {
                host_header_sent = 1;
            }
        }

        msg(D_PROXY, "Send to HTTP proxy: '%s'", buf);
        if (!send_line_crlf(sd, buf))
        {
            return 0;
        }
    }

    if (!host_header_sent)
    {
        openvpn_snprintf(buf, sizeof(buf), "Host: %s", host);
        msg(D_PROXY, "Send to HTTP proxy: '%s'", buf);
        if (!send_line_crlf(sd, buf))
        {
            return 0;
        }
    }


    if (p->options.user_agent)
    {
        openvpn_snprintf(buf, sizeof(buf), "User-Agent: %s",
                         p->options.user_agent);
        msg(D_PROXY, "Send to HTTP proxy: '%s'", buf);
        if (!send_line_crlf(sd, buf))
        {
            return 0;
        }
    }

    return 1;
}
