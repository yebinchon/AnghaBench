
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_property {int dummy; } ;


 int STREAM_SUB ;
 int property_switch_track (struct m_property*,int,void*,void*,int ,int ) ;

__attribute__((used)) static int mp_property_sub(void *ctx, struct m_property *prop,
                           int action, void *arg)
{
    return property_switch_track(prop, action, arg, ctx, 0, STREAM_SUB);
}
