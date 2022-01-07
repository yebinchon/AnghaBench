
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_stream {int dummy; } ;
struct priv {struct sh_stream* src; } ;
struct mp_filter {struct priv* priv; } ;


 int MP_PIN_OUT ;
 int demux_filter ;
 int demux_set_stream_wakeup_cb (struct sh_stream*,int ,struct mp_filter*) ;
 int mp_filter_add_pin (struct mp_filter*,int ,char*) ;
 struct mp_filter* mp_filter_create (struct mp_filter*,int *) ;
 int wakeup ;

struct mp_filter *mp_demux_in_create(struct mp_filter *parent,
                                     struct sh_stream *src)
{
    struct mp_filter *f = mp_filter_create(parent, &demux_filter);
    if (!f)
        return ((void*)0);

    struct priv *p = f->priv;
    p->src = src;

    mp_filter_add_pin(f, MP_PIN_OUT, "out");

    demux_set_stream_wakeup_cb(p->src, wakeup, f);

    return f;
}
