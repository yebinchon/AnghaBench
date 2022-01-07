
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int src; } ;
struct mp_filter {struct priv* priv; } ;


 int demux_set_stream_wakeup_cb (int ,int *,int *) ;

__attribute__((used)) static void destroy(struct mp_filter *f)
{
    struct priv *p = f->priv;

    demux_set_stream_wakeup_cb(p->src, ((void*)0), ((void*)0));
}
