
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int mainloop; } ;
typedef scalar_t__ pa_operation_state_t ;
typedef int pa_operation ;


 scalar_t__ PA_OPERATION_DONE ;
 scalar_t__ PA_OPERATION_RUNNING ;
 scalar_t__ pa_operation_get_state (int *) ;
 int pa_operation_unref (int *) ;
 int pa_threaded_mainloop_unlock (int ) ;
 int pa_threaded_mainloop_wait (int ) ;

__attribute__((used)) static int waitop(struct priv *priv, pa_operation *op)
{
    if (!op) {
        pa_threaded_mainloop_unlock(priv->mainloop);
        return 0;
    }
    pa_operation_state_t state = pa_operation_get_state(op);
    while (state == PA_OPERATION_RUNNING) {
        pa_threaded_mainloop_wait(priv->mainloop);
        state = pa_operation_get_state(op);
    }
    pa_operation_unref(op);
    pa_threaded_mainloop_unlock(priv->mainloop);
    return state == PA_OPERATION_DONE;
}
