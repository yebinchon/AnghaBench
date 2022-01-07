
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct osd_state {TYPE_1__* global; } ;
struct mp_osd_res {int dummy; } ;
struct osd_object {struct mp_osd_res vo_res; } ;
struct TYPE_2__ {int client_api; } ;


 int MP_EVENT_WIN_RESIZE ;
 int mp_client_api_get_core (int ) ;
 int mp_client_broadcast_event (int ,int ,int *) ;
 int osd_res_equals (struct mp_osd_res,struct mp_osd_res) ;

__attribute__((used)) static void check_obj_resize(struct osd_state *osd, struct mp_osd_res res,
                             struct osd_object *obj)
{
    if (!osd_res_equals(res, obj->vo_res)) {
        obj->vo_res = res;
        mp_client_broadcast_event(mp_client_api_get_core(osd->global->client_api),
                                  MP_EVENT_WIN_RESIZE, ((void*)0));
    }
}
