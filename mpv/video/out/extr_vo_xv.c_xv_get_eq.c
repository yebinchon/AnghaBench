
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vo {TYPE_1__* x11; } ;
struct TYPE_2__ {int display; } ;


 int MP_VERBOSE (struct vo*,char*,char const*,int) ;
 int None ;
 int VO_FALSE ;
 int VO_TRUE ;
 int XvGetPortAttribute (int ,int ,int,int*) ;
 int xv_find_atom (struct vo*,int ,char const*,int,int*,int*) ;

__attribute__((used)) static int xv_get_eq(struct vo *vo, uint32_t xv_port, const char *name,
                     int *value)
{
    int min, max;
    int atom = xv_find_atom(vo, xv_port, name, 1, &min, &max);
    if (atom != None) {
        int port_value = 0;
        XvGetPortAttribute(vo->x11->display, xv_port, atom, &port_value);

        *value = (port_value - min) * 200 / (max - min) - 100;
        MP_VERBOSE(vo, "xv_get_eq called! (%s, %d)\n", name, *value);
        return VO_TRUE;
    }
    return VO_FALSE;
}
