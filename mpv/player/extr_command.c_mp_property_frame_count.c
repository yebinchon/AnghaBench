
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_property {int dummy; } ;
typedef int MPContext ;


 int M_PROPERTY_UNAVAILABLE ;
 int get_frame_count (int *) ;
 int m_property_int_ro (int,void*,int) ;

__attribute__((used)) static int mp_property_frame_count(void *ctx, struct m_property *prop,
                                   int action, void *arg)
{
    MPContext *mpctx = ctx;
    int frames = get_frame_count(mpctx);
    if (frames < 0)
        return M_PROPERTY_UNAVAILABLE;

    return m_property_int_ro(action, arg, frames);
}
