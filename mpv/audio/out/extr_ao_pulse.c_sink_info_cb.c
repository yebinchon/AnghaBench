
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sink_cb_ctx {TYPE_3__* ao; int list; } ;
struct priv {int mainloop; } ;
struct ao_device_desc {int desc; int name; } ;
struct TYPE_4__ {int description; int name; } ;
typedef TYPE_1__ pa_sink_info ;
typedef int pa_context ;
struct TYPE_5__ {struct priv* priv; } ;


 int ao_device_list_add (int ,TYPE_3__*,struct ao_device_desc*) ;
 int pa_threaded_mainloop_signal (int ,int ) ;

__attribute__((used)) static void sink_info_cb(pa_context *c, const pa_sink_info *i, int eol, void *ud)
{
    struct sink_cb_ctx *ctx = ud;
    struct priv *priv = ctx->ao->priv;

    if (eol) {
        pa_threaded_mainloop_signal(priv->mainloop, 0);
        return;
    }

    struct ao_device_desc entry = {.name = i->name, .desc = i->description};
    ao_device_list_add(ctx->list, ctx->ao, &entry);
}
