
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int mainloop; } ;
struct ao {struct priv* priv; } ;
typedef int pa_stream ;


 int MP_VERBOSE (struct ao*,char*) ;



 int ao_request_reload (struct ao*) ;
 int pa_stream_get_state (int *) ;
 int pa_threaded_mainloop_signal (int ,int ) ;

__attribute__((used)) static void stream_state_cb(pa_stream *s, void *userdata)
{
    struct ao *ao = userdata;
    struct priv *priv = ao->priv;
    switch (pa_stream_get_state(s)) {
    case 130:
        MP_VERBOSE(ao, "Stream failed.\n");
        ao_request_reload(ao);
        pa_threaded_mainloop_signal(priv->mainloop, 0);
        break;
    case 129:
    case 128:
        pa_threaded_mainloop_signal(priv->mainloop, 0);
        break;
    }
}
