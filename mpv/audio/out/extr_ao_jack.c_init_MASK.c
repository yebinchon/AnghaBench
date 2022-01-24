#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct priv {int /*<<< orphan*/  client; int /*<<< orphan*/  num_ports; TYPE_1__* opts; } ;
struct mp_chmap_sel {int /*<<< orphan*/  member_0; } ;
struct TYPE_5__ {int /*<<< orphan*/  num; } ;
struct ao {TYPE_2__ channels; int /*<<< orphan*/  samplerate; int /*<<< orphan*/  format; int /*<<< orphan*/  global; struct priv* priv; } ;
typedef  int /*<<< orphan*/  jack_options_t ;
struct TYPE_4__ {int stdlayout; int /*<<< orphan*/  client_name; int /*<<< orphan*/  autostart; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_FORMAT_FLOATP ; 
 int /*<<< orphan*/  JackNoStartServer ; 
 int /*<<< orphan*/  JackNullOption ; 
 int /*<<< orphan*/  FUNC0 (struct ao*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ao*,struct mp_chmap_sel*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ao*,struct mp_chmap_sel*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ao_jack_conf ; 
 int /*<<< orphan*/  buffer_size_cb ; 
 scalar_t__ FUNC3 (struct ao*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  graph_order_cb ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ao*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ao*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ao*) ; 
 int /*<<< orphan*/  FUNC10 (struct mp_chmap_sel*) ; 
 int /*<<< orphan*/  FUNC11 (struct mp_chmap_sel*) ; 
 TYPE_1__* FUNC12 (struct ao*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  process ; 

__attribute__((used)) static int FUNC13(struct ao *ao)
{
    struct priv *p = ao->priv;
    struct mp_chmap_sel sel = {0};
    jack_options_t open_options;

    p->opts = FUNC12(ao, ao->global, &ao_jack_conf);

    ao->format = AF_FORMAT_FLOATP;

    switch (p->opts->stdlayout) {
    case 0:
        FUNC11(&sel);
        break;

    default:
        FUNC10(&sel);
    }

    if (!FUNC1(ao, &sel, &ao->channels))
        goto err_chmap;

    open_options = JackNullOption;
    if (!p->opts->autostart)
        open_options |= JackNoStartServer;

    p->client = FUNC5(p->opts->client_name, open_options, NULL);
    if (!p->client) {
        FUNC0(ao, "cannot open server\n");
        goto err_client_open;
    }

    if (FUNC3(ao, ao->channels.num))
        goto err_create_ports;

    FUNC9(p->client, process, ao);

    ao->samplerate = FUNC6(p->client);

    FUNC7(p->client, buffer_size_cb, ao);
    FUNC8(p->client, graph_order_cb, ao);

    if (!FUNC2(ao, &sel, &ao->channels, p->num_ports))
        goto err_chmap_sel_get_def;

    return 0;

err_chmap_sel_get_def:
err_create_ports:
    FUNC4(p->client);
err_client_open:
err_chmap:
    return -1;
}