
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_property {int dummy; } ;


 int mp_property_playlist_pos_x (void*,struct m_property*,int,void*,int) ;

__attribute__((used)) static int mp_property_playlist_pos_1(void *ctx, struct m_property *prop,
                                      int action, void *arg)
{
    return mp_property_playlist_pos_x(ctx, prop, action, arg, 1);
}
