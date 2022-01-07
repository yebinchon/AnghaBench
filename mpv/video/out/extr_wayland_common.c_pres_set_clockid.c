
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct wp_presentation {int dummy; } ;
struct vo_wayland_state {struct wp_presentation* presentation; } ;


 int CLOCK_MONOTONIC ;

__attribute__((used)) static void pres_set_clockid(void *data, struct wp_presentation *pres,
                           uint32_t clockid)
{
    struct vo_wayland_state *wl = data;

    wl->presentation = pres;
    clockid = CLOCK_MONOTONIC;
}
