#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct remote_list {int len; struct remote_entry** array; } ;
struct remote_entry {struct connection_entry* remote; } ;
struct connection_entry {int len; int /*<<< orphan*/ * array; } ;
struct options {int ncp_enabled; scalar_t__ mode; scalar_t__ http_proxy_override; scalar_t__ pull; int /*<<< orphan*/ * dh_file; scalar_t__ tls_server; struct connection_entry* connection_list; struct connection_entry ce; struct remote_list* remote_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct connection_entry*) ; 
 scalar_t__ MODE_SERVER ; 
 int /*<<< orphan*/  M_USAGE ; 
 int /*<<< orphan*/  M_WARN ; 
 struct connection_entry* FUNC1 (struct options*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct connection_entry*,struct remote_entry const*) ; 
 int /*<<< orphan*/  FUNC3 (struct options*) ; 
 int /*<<< orphan*/  FUNC4 (struct options*) ; 
 int /*<<< orphan*/  FUNC5 (struct options*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct options*) ; 
 int /*<<< orphan*/  FUNC9 (struct options*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct options*) ; 
 int /*<<< orphan*/  FUNC11 (struct options*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC13(struct options *o)
{
    int i;
    /*
     * Process helper-type options which map to other, more complex
     * sequences of options.
     */
    FUNC3(o);
    FUNC4(o);
    FUNC5(o);

    FUNC10(o);

    if (o->remote_list && !o->connection_list)
    {
        /*
         * Convert remotes into connection list
         */
        const struct remote_list *rl = o->remote_list;
        for (i = 0; i < rl->len; ++i)
        {
            const struct remote_entry *re = rl->array[i];
            struct connection_entry ce = o->ce;
            struct connection_entry *ace;

            FUNC0(re->remote);
            FUNC2(&ce, re);
            ace = FUNC1(o, M_USAGE);
            FUNC0(ace);
            *ace = ce;
        }
    }
    else if (!o->remote_list && !o->connection_list)
    {
        struct connection_entry *ace;
        ace = FUNC1(o, M_USAGE);
        FUNC0(ace);
        *ace = o->ce;
    }

    FUNC0(o->connection_list);
    for (i = 0; i < o->connection_list->len; ++i)
    {
        FUNC9(o, o->connection_list->array[i]);
    }

    if (o->tls_server)
    {
        /* Check that DH file is specified, or explicitly disabled */
        FUNC7(o->dh_file, "DH file (--dh)");
        if (FUNC12(o->dh_file, "none"))
        {
            o->dh_file = NULL;
        }
    }
    else if (o->dh_file)
    {
        /* DH file is only meaningful in a tls-server context. */
        FUNC6(M_WARN, "WARNING: Ignoring option 'dh' in tls-client mode, please only "
            "include this in your server configuration");
        o->dh_file = NULL;
    }

    /* cipher negotiation (NCP) currently assumes --pull or --mode server */
    if (o->ncp_enabled
        && !(o->pull || o->mode == MODE_SERVER) )
    {
        FUNC6( M_WARN, "disabling NCP mode (--ncp-disable) because not "
             "in P2MP client or server mode" );
        o->ncp_enabled = false;
    }

#if ENABLE_MANAGEMENT
    if (o->http_proxy_override)
    {
        options_postprocess_http_proxy_override(o);
    }
#endif

#if P2MP
    /*
     * Save certain parms before modifying options via --pull
     */
    pre_pull_save(o);
#endif
}