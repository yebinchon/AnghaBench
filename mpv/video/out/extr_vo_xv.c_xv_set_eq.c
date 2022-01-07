
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
 int XvSetPortAttribute (int ,int ,int,int) ;
 int xv_find_atom (struct vo*,int ,char const*,int,int*,int*) ;

__attribute__((used)) static int xv_set_eq(struct vo *vo, uint32_t xv_port, const char *name,
                     int value)
{
    MP_VERBOSE(vo, "xv_set_eq called! (%s, %d)\n", name, value);

    int min, max;
    int atom = xv_find_atom(vo, xv_port, name, 0, &min, &max);
    if (atom != None) {



        int port_value = (value + 100) * (max - min) / 200 + min;
        XvSetPortAttribute(vo->x11->display, xv_port, atom, port_value);
        return VO_TRUE;
    }
    return VO_FALSE;
}
