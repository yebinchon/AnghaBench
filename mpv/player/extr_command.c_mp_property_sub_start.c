
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct m_property {int dummy; } ;
struct TYPE_2__ {double start; } ;


 double MP_NOPTS_VALUE ;
 int M_PROPERTY_UNAVAILABLE ;
 TYPE_1__ get_times (void*,struct m_property*,int,void*) ;
 int m_property_double_ro (int,void*,double) ;

__attribute__((used)) static int mp_property_sub_start(void *ctx, struct m_property *prop,
                                int action, void *arg)
{
    double start = get_times(ctx, prop, action, arg).start;
    if (start == MP_NOPTS_VALUE)
        return M_PROPERTY_UNAVAILABLE;
    return m_property_double_ro(action, arg, start);
}
