
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sockflags; char* ip_remote_hint; struct connection_list* connection_list; } ;
struct context {TYPE_1__ options; } ;
struct connection_list {int len; struct connection_entry** array; } ;
struct connection_entry {char* remote; char const* socks_proxy_server; char const* local; int af; int local_port; scalar_t__ bind_local; int socks_proxy_port; TYPE_2__* http_proxy_options; int remote_port; int proto; } ;
struct TYPE_4__ {char const* server; int port; } ;


 int GETADDR_DATAGRAM ;
 unsigned int GETADDR_FATAL ;
 unsigned int GETADDR_MENTION_RESOLVE_RETRY ;
 int GETADDR_PASSIVE ;
 int GETADDR_RANDOMIZE ;
 unsigned int GETADDR_RESOLVE ;
 unsigned int GETADDR_UPDATE_MANAGEMENT_STATE ;
 int SF_HOST_RANDOMIZE ;
 int SIGHUP ;
 int do_preresolve_host (struct context*,char const*,int ,int ,unsigned int const) ;
 scalar_t__ proto_is_dgram (int ) ;
 int throw_signal_soft (int ,char*) ;

void
do_preresolve(struct context *c)
{
    int i;
    struct connection_list *l = c->options.connection_list;
    const unsigned int preresolve_flags = GETADDR_RESOLVE
                                          |GETADDR_UPDATE_MANAGEMENT_STATE
                                          |GETADDR_MENTION_RESOLVE_RETRY
                                          |GETADDR_FATAL;


    for (i = 0; i < l->len; ++i)
    {
        int status;
        const char *remote;
        int flags = preresolve_flags;

        struct connection_entry *ce = c->options.connection_list->array[i];

        if (proto_is_dgram(ce->proto))
        {
            flags |= GETADDR_DATAGRAM;
        }

        if (c->options.sockflags & SF_HOST_RANDOMIZE)
        {
            flags |= GETADDR_RANDOMIZE;
        }

        if (c->options.ip_remote_hint)
        {
            remote = c->options.ip_remote_hint;
        }
        else
        {
            remote = ce->remote;
        }


        if (!ce->http_proxy_options)
        {
            status = do_preresolve_host(c, remote, ce->remote_port, ce->af, flags);
            if (status != 0)
            {
                goto err;
            }
        }


        if (ce->http_proxy_options)
        {
            status = do_preresolve_host(c,
                                        ce->http_proxy_options->server,
                                        ce->http_proxy_options->port,
                                        ce->af,
                                        preresolve_flags);

            if (status != 0)
            {
                goto err;
            }
        }

        if (ce->socks_proxy_server)
        {
            status = do_preresolve_host(c,
                                        ce->socks_proxy_server,
                                        ce->socks_proxy_port,
                                        ce->af,
                                        flags);
            if (status != 0)
            {
                goto err;
            }
        }

        if (ce->bind_local)
        {
            flags |= GETADDR_PASSIVE;
            flags &= ~GETADDR_RANDOMIZE;
            status = do_preresolve_host(c, ce->local, ce->local_port, ce->af, flags);
            if (status != 0)
            {
                goto err;
            }

        }

    }
    return;

err:
    throw_signal_soft(SIGHUP, "Preresolving failed");
}
