#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mp_output_chain {void* output_aformat; void* input_aformat; struct mp_filter* f; } ;
struct mp_filter {int /*<<< orphan*/  log; struct chain* priv; TYPE_1__* global; } ;
struct chain {int type; TYPE_3__* output; int /*<<< orphan*/  num_post_filters; int /*<<< orphan*/  post_filters; TYPE_2__* convert; TYPE_3__* convert_wrapper; TYPE_3__* input; int /*<<< orphan*/  num_pre_filters; int /*<<< orphan*/  pre_filters; struct mp_output_chain public; int /*<<< orphan*/  log; struct mp_filter* f; } ;
typedef  enum mp_output_chain_type { ____Placeholder_mp_output_chain_type } mp_output_chain_type ;
struct TYPE_6__ {char* name; void* f; int /*<<< orphan*/  wrapper; } ;
struct TYPE_5__ {struct chain* on_audio_format_change_opaque; int /*<<< orphan*/  on_audio_format_change; void* f; } ;
struct TYPE_4__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
#define  MP_OUTPUT_CHAIN_AUDIO 129 
#define  MP_OUTPUT_CHAIN_VIDEO 128 
 int /*<<< orphan*/  MP_PIN_IN ; 
 int /*<<< orphan*/  MP_PIN_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct chain*) ; 
 int /*<<< orphan*/  FUNC3 (struct chain*) ; 
 void* FUNC4 (struct chain*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mp_filter*,int /*<<< orphan*/ ,char*) ; 
 struct mp_filter* FUNC9 (struct mp_filter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct mp_filter*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  on_audio_format_change ; 
 int /*<<< orphan*/  output_chain_filter ; 
 int /*<<< orphan*/  FUNC11 (struct chain*) ; 
 int /*<<< orphan*/  FUNC12 (struct mp_filter*) ; 
 void* FUNC13 (struct chain*,int /*<<< orphan*/ ) ; 

struct mp_output_chain *FUNC14(struct mp_filter *parent,
                                               enum mp_output_chain_type type)
{
    struct mp_filter *f = FUNC9(parent, &output_chain_filter);
    if (!f)
        return NULL;

    FUNC8(f, MP_PIN_IN, "in");
    FUNC8(f, MP_PIN_OUT, "out");

    const char *log_name = NULL;
    switch (type) {
    case MP_OUTPUT_CHAIN_VIDEO: log_name = "!vf"; break;
    case MP_OUTPUT_CHAIN_AUDIO: log_name = "!af"; break;
    }
    if (log_name)
        f->log = FUNC10(f, parent->global->log, log_name);

    struct chain *p = f->priv;
    p->f = f;
    p->log = f->log;
    p->type = type;

    struct mp_output_chain *c = &p->public;
    c->f = f;
    c->input_aformat = FUNC13(p, FUNC5());
    c->output_aformat = FUNC13(p, FUNC5());

    // Dummy filter for reporting and logging the input format.
    p->input = FUNC4(p);
    p->input->f = FUNC7(p->input->wrapper);
    if (!p->input->f)
        FUNC1();
    p->input->name = "in";
    FUNC0(p, p->pre_filters, p->num_pre_filters, p->input);

    switch (type) {
    case MP_OUTPUT_CHAIN_VIDEO: FUNC3(p); break;
    case MP_OUTPUT_CHAIN_AUDIO: FUNC2(p); break;
    }

    p->convert_wrapper = FUNC4(p);
    p->convert = FUNC6(p->convert_wrapper->wrapper);
    if (!p->convert)
        FUNC1();
    p->convert_wrapper->name = "convert";
    p->convert_wrapper->f = p->convert->f;
    FUNC0(p, p->post_filters, p->num_post_filters, p->convert_wrapper);

    if (type == MP_OUTPUT_CHAIN_AUDIO) {
        p->convert->on_audio_format_change = on_audio_format_change;
        p->convert->on_audio_format_change_opaque = p;
    }

    // Dummy filter for reporting and logging the output format.
    p->output = FUNC4(p);
    p->output->f = FUNC7(p->output->wrapper);
    if (!p->output->f)
        FUNC1();
    p->output->name = "out";
    FUNC0(p, p->post_filters, p->num_post_filters, p->output);

    FUNC11(p);

    FUNC12(f);

    return c;
}