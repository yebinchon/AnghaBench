#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char const* user_agent; TYPE_1__* custom_headers; } ;
struct http_proxy_info {TYPE_2__ options; } ;
typedef  int /*<<< orphan*/  socket_descriptor_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_3__ {char const* name; scalar_t__ content; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_PROXY ; 
 int MAX_CUSTOM_HTTP_HEADER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,int) ; 

__attribute__((used)) static bool
FUNC5(struct http_proxy_info *p,
                  socket_descriptor_t sd, /* already open to proxy */
                  const char *host,       /* openvpn server remote */
                  const char *port        /* openvpn server port */
                  )
{
    char buf[512];
    int i;
    bool host_header_sent = false;

    /*
     * Send custom headers if provided
     * If content is NULL the whole header is in name
     * Also remember if we already sent a Host: header
     */
    for  (i = 0; i < MAX_CUSTOM_HTTP_HEADER && p->options.custom_headers[i].name; i++)
    {
        if (p->options.custom_headers[i].content)
        {
            FUNC1(buf, sizeof(buf), "%s: %s",
                             p->options.custom_headers[i].name,
                             p->options.custom_headers[i].content);
            if (!FUNC3(p->options.custom_headers[i].name, "Host"))
            {
                host_header_sent = true;
            }
        }
        else
        {
            FUNC1(buf, sizeof(buf), "%s",
                             p->options.custom_headers[i].name);
            if (!FUNC4(p->options.custom_headers[i].name, "Host:", 5))
            {
                host_header_sent = true;
            }
        }

        FUNC0(D_PROXY, "Send to HTTP proxy: '%s'", buf);
        if (!FUNC2(sd, buf))
        {
            return false;
        }
    }

    if (!host_header_sent)
    {
        FUNC1(buf, sizeof(buf), "Host: %s", host);
        FUNC0(D_PROXY, "Send to HTTP proxy: '%s'", buf);
        if (!FUNC2(sd, buf))
        {
            return false;
        }
    }

    /* send User-Agent string if provided */
    if (p->options.user_agent)
    {
        FUNC1(buf, sizeof(buf), "User-Agent: %s",
                         p->options.user_agent);
        FUNC0(D_PROXY, "Send to HTTP proxy: '%s'", buf);
        if (!FUNC2(sd, buf))
        {
            return false;
        }
    }

    return true;
}