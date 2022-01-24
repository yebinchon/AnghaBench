#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct lavfi {int failed; int num_all_pads; int /*<<< orphan*/  f; TYPE_1__** all_pads; int /*<<< orphan*/  graph_string; scalar_t__ graph; int /*<<< orphan*/  direct_filter_opts; int /*<<< orphan*/  log; scalar_t__ direct_filter; int /*<<< orphan*/  graph_opts; } ;
struct TYPE_8__ {int /*<<< orphan*/  nb_outputs; int /*<<< orphan*/  output_pads; int /*<<< orphan*/  nb_inputs; int /*<<< orphan*/  input_pads; int /*<<< orphan*/  priv; } ;
struct TYPE_7__ {int /*<<< orphan*/  filter; } ;
typedef  int /*<<< orphan*/  AVFilterInOut ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lavfi*,char*,...) ; 
 int /*<<< orphan*/  MP_PIN_IN ; 
 int /*<<< orphan*/  MP_PIN_OUT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct lavfi*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct lavfi*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 TYPE_2__* FUNC7 (scalar_t__,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC9 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (struct lavfi*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct lavfi *c, bool first_init)
{
    FUNC4(!c->graph);

    c->failed = false;

    c->graph = FUNC6();
    if (!c->graph)
        FUNC1();

    if (FUNC13(c->log, c->graph, c->graph_opts) < 0)
        goto error;

    if (c->direct_filter) {
        AVFilterContext *filter = FUNC7(c->graph,
                            FUNC5(c->graph_string), "filter");
        if (!filter) {
            FUNC0(c, "filter '%s' not found or failed to allocate\n",
                     c->graph_string);
            goto error;
        }

        if (FUNC14(c->log, filter, filter->priv,
                              c->direct_filter_opts) < 0)
            goto error;

        if (FUNC9(filter, NULL) < 0) {
            FUNC0(c, "filter failed to initialize\n");
            goto error;
        }

        FUNC3(c, MP_PIN_IN, filter, filter->input_pads,
                        filter->nb_inputs, first_init);
        FUNC3(c, MP_PIN_OUT, filter, filter->output_pads,
                        filter->nb_outputs, first_init);
    } else {
        AVFilterInOut *in = NULL, *out = NULL;
        if (FUNC8(c->graph, c->graph_string, &in, &out) < 0) {
            FUNC0(c, "parsing the filter graph failed\n");
            goto error;
        }
        FUNC2(c, MP_PIN_IN, in, first_init);
        FUNC2(c, MP_PIN_OUT, out, first_init);
        FUNC10(&in);
        FUNC10(&out);
    }

    for (int n = 0; n < c->num_all_pads; n++)
        c->failed |= !c->all_pads[n]->filter;

    if (c->failed)
        goto error;

    return;

error:
    FUNC11(c);
    c->failed = true;
    FUNC12(c->f);
    return;
}