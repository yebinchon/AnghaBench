
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct connection_entry {int flags; } ;
struct TYPE_8__ {int no_advance; int unsuccessful_attempts; int connect_retry_max; struct connection_entry ce; int persist_remote_ip; struct connection_list* connection_list; } ;
struct TYPE_6__ {TYPE_1__* remote_list; TYPE_1__* current_remote; } ;
struct TYPE_7__ {TYPE_2__ link_socket_addr; } ;
struct context {TYPE_4__ options; TYPE_3__ c1; } ;
struct connection_list {size_t current; size_t len; struct connection_entry** array; } ;
struct TYPE_5__ {struct TYPE_5__* ai_next; } ;


 int ASSERT (int ) ;
 int CE_DISABLED ;
 scalar_t__ IS_SIG (struct context*) ;
 int M_FATAL ;
 int ce_management_query_proxy (struct context*) ;
 int ce_management_query_remote (struct context*) ;
 scalar_t__ management ;
 scalar_t__ management_query_proxy_enabled (scalar_t__) ;
 scalar_t__ management_query_remote_enabled (scalar_t__) ;
 int msg (int ,char*,...) ;
 int update_options_ce_post (TYPE_4__*) ;

__attribute__((used)) static void
next_connection_entry(struct context *c)
{
    struct connection_list *l = c->options.connection_list;
    bool ce_defined;
    struct connection_entry *ce;
    int n_cycles = 0;

    do
    {
        ce_defined = 1;
        if (c->options.no_advance && l->current >= 0)
        {
            c->options.no_advance = 0;
        }
        else
        {


            if (c->c1.link_socket_addr.current_remote
                && c->c1.link_socket_addr.current_remote->ai_next)
            {
                c->c1.link_socket_addr.current_remote =
                    c->c1.link_socket_addr.current_remote->ai_next;
            }
            else
            {




                if (!c->options.persist_remote_ip)
                {

                    ASSERT(c->c1.link_socket_addr.current_remote == ((void*)0));
                    ASSERT(c->c1.link_socket_addr.remote_list == ((void*)0));
                }
                else
                {
                    c->c1.link_socket_addr.current_remote =
                        c->c1.link_socket_addr.remote_list;
                }







                c->options.unsuccessful_attempts++;

                if (++l->current >= l->len)
                {

                    l->current = 0;
                    if (++n_cycles >= 2)
                    {
                        msg(M_FATAL, "No usable connection profiles are present");
                    }
                }
            }
        }

        ce = l->array[l->current];

        if (ce->flags & CE_DISABLED)
        {
            ce_defined = 0;
        }

        c->options.ce = *ce;
    } while (!ce_defined);


    if (c->options.connect_retry_max > 0
        && c->options.unsuccessful_attempts > (l->len * c->options.connect_retry_max))
    {
        msg(M_FATAL, "All connections have been connect-retry-max (%d) times unsuccessful, exiting",
            c->options.connect_retry_max);
    }
    update_options_ce_post(&c->options);
}
