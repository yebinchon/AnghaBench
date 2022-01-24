#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int event_set_owned; int link_socket_owned; int buffers_owned; int es_owned; int /*<<< orphan*/ * comp_context; int /*<<< orphan*/ * event_set; int /*<<< orphan*/ * tls_multi; int /*<<< orphan*/  gc; } ;
struct TYPE_6__ {int /*<<< orphan*/  proto; } ;
struct TYPE_8__ {TYPE_2__ ce; } ;
struct TYPE_5__ {int tuntap_owned; int status_output_owned; int ifconfig_pool_persist_owned; } ;
struct context {int first_time; int plugins_owned; TYPE_3__ c2; TYPE_4__ options; TYPE_1__ c1; int /*<<< orphan*/  gc; int /*<<< orphan*/ * c0; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_TOP_CLONE ; 
 int /*<<< orphan*/  FUNC0 (struct context*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(struct context *dest,
                    const struct context *src)
{
    /* copy parent */
    *dest = *src;

    /*
     * CM_TOP_CLONE will prevent close_instance from freeing or closing
     * resources owned by the parent.
     *
     * Also note that CM_TOP_CLONE context objects are
     * closed by multi_top_free in multi.c.
     */
    dest->mode = CM_TOP_CLONE;

    dest->first_time = false;
    dest->c0 = NULL;

    FUNC2(&dest->options);
    FUNC1(&dest->gc);
    FUNC1(&dest->c2.gc);

    /* detach plugins */
    dest->plugins_owned = false;

    dest->c2.tls_multi = NULL;

    /* detach c1 ownership */
    dest->c1.tuntap_owned = false;
    dest->c1.status_output_owned = false;
#if P2MP_SERVER
    dest->c1.ifconfig_pool_persist_owned = false;
#endif

    /* detach c2 ownership */
    dest->c2.event_set_owned = false;
    dest->c2.link_socket_owned = false;
    dest->c2.buffers_owned = false;
    dest->c2.es_owned = false;

    dest->c2.event_set = NULL;
    if (FUNC3(src->options.ce.proto))
    {
        FUNC0(dest, false);
    }

#ifdef USE_COMP
    dest->c2.comp_context = NULL;
#endif
}