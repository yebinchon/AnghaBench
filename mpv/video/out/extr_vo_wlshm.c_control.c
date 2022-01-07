
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vo {int dummy; } ;


 int VO_EVENT_RESIZE ;
 int resize (struct vo*) ;
 int vo_event (struct vo*,int) ;
 int vo_wayland_control (struct vo*,int*,int ,void*) ;

__attribute__((used)) static int control(struct vo *vo, uint32_t request, void *data)
{
    int events = 0;
    int ret = vo_wayland_control(vo, &events, request, data);

    if (events & VO_EVENT_RESIZE)
        ret = resize(vo);
    vo_event(vo, events);
    return ret;
}
