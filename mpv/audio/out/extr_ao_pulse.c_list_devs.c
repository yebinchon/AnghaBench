
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sink_cb_ctx {struct ao_device_list* member_1; struct ao* member_0; } ;
struct priv {int context; int mainloop; } ;
struct ao_device_list {int dummy; } ;
struct ao {struct priv* priv; } ;


 int pa_context_get_sink_info_list (int ,int ,struct sink_cb_ctx*) ;
 int pa_threaded_mainloop_lock (int ) ;
 int sink_info_cb ;
 int waitop (struct priv*,int ) ;

__attribute__((used)) static void list_devs(struct ao *ao, struct ao_device_list *list)
{
    struct priv *priv = ao->priv;
    struct sink_cb_ctx ctx = {ao, list};

    pa_threaded_mainloop_lock(priv->mainloop);
    waitop(priv, pa_context_get_sink_info_list(priv->context, sink_info_cb, &ctx));
}
