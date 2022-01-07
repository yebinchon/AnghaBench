
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_cs {int fb; int state; TYPE_1__* device; } ;
struct wined3d_adapter {int d3d_info; int gl_info; } ;
struct TYPE_2__ {struct wined3d_adapter* adapter; } ;


 int WINED3D_STATE_INIT_DEFAULT ;
 int WINED3D_STATE_NO_REF ;
 int memset (int *,int ,int) ;
 int state_cleanup (int *) ;
 int state_init (int *,int *,int *,int *,int) ;

__attribute__((used)) static void wined3d_cs_exec_reset_state(struct wined3d_cs *cs, const void *data)
{
    struct wined3d_adapter *adapter = cs->device->adapter;

    state_cleanup(&cs->state);
    memset(&cs->state, 0, sizeof(cs->state));
    state_init(&cs->state, &cs->fb, &adapter->gl_info, &adapter->d3d_info,
            WINED3D_STATE_NO_REF | WINED3D_STATE_INIT_DEFAULT);
}
