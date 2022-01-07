
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mp_output_chain {void* output_aformat; void* input_aformat; struct mp_filter* f; } ;
struct mp_filter {int log; struct chain* priv; TYPE_1__* global; } ;
struct chain {int type; TYPE_3__* output; int num_post_filters; int post_filters; TYPE_2__* convert; TYPE_3__* convert_wrapper; TYPE_3__* input; int num_pre_filters; int pre_filters; struct mp_output_chain public; int log; struct mp_filter* f; } ;
typedef enum mp_output_chain_type { ____Placeholder_mp_output_chain_type } mp_output_chain_type ;
struct TYPE_6__ {char* name; void* f; int wrapper; } ;
struct TYPE_5__ {struct chain* on_audio_format_change_opaque; int on_audio_format_change; void* f; } ;
struct TYPE_4__ {int log; } ;




 int MP_PIN_IN ;
 int MP_PIN_OUT ;
 int MP_TARRAY_APPEND (struct chain*,int ,int ,TYPE_3__*) ;
 int abort () ;
 int create_audio_things (struct chain*) ;
 int create_video_things (struct chain*) ;
 void* create_wrapper_filter (struct chain*) ;
 int mp_aframe_create () ;
 TYPE_2__* mp_autoconvert_create (int ) ;
 void* mp_bidir_nop_filter_create (int ) ;
 int mp_filter_add_pin (struct mp_filter*,int ,char*) ;
 struct mp_filter* mp_filter_create (struct mp_filter*,int *) ;
 int mp_log_new (struct mp_filter*,int ,char const*) ;
 int on_audio_format_change ;
 int output_chain_filter ;
 int relink_filter_list (struct chain*) ;
 int reset (struct mp_filter*) ;
 void* talloc_steal (struct chain*,int ) ;

struct mp_output_chain *mp_output_chain_create(struct mp_filter *parent,
                                               enum mp_output_chain_type type)
{
    struct mp_filter *f = mp_filter_create(parent, &output_chain_filter);
    if (!f)
        return ((void*)0);

    mp_filter_add_pin(f, MP_PIN_IN, "in");
    mp_filter_add_pin(f, MP_PIN_OUT, "out");

    const char *log_name = ((void*)0);
    switch (type) {
    case 128: log_name = "!vf"; break;
    case 129: log_name = "!af"; break;
    }
    if (log_name)
        f->log = mp_log_new(f, parent->global->log, log_name);

    struct chain *p = f->priv;
    p->f = f;
    p->log = f->log;
    p->type = type;

    struct mp_output_chain *c = &p->public;
    c->f = f;
    c->input_aformat = talloc_steal(p, mp_aframe_create());
    c->output_aformat = talloc_steal(p, mp_aframe_create());


    p->input = create_wrapper_filter(p);
    p->input->f = mp_bidir_nop_filter_create(p->input->wrapper);
    if (!p->input->f)
        abort();
    p->input->name = "in";
    MP_TARRAY_APPEND(p, p->pre_filters, p->num_pre_filters, p->input);

    switch (type) {
    case 128: create_video_things(p); break;
    case 129: create_audio_things(p); break;
    }

    p->convert_wrapper = create_wrapper_filter(p);
    p->convert = mp_autoconvert_create(p->convert_wrapper->wrapper);
    if (!p->convert)
        abort();
    p->convert_wrapper->name = "convert";
    p->convert_wrapper->f = p->convert->f;
    MP_TARRAY_APPEND(p, p->post_filters, p->num_post_filters, p->convert_wrapper);

    if (type == 129) {
        p->convert->on_audio_format_change = on_audio_format_change;
        p->convert->on_audio_format_change_opaque = p;
    }


    p->output = create_wrapper_filter(p);
    p->output->f = mp_bidir_nop_filter_create(p->output->wrapper);
    if (!p->output->f)
        abort();
    p->output->name = "out";
    MP_TARRAY_APPEND(p, p->post_filters, p->num_post_filters, p->output);

    relink_filter_list(p);

    reset(f);

    return c;
}
