
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct m_property {int dummy; } ;
struct demuxer {scalar_t__ num_editions; } ;
struct TYPE_2__ {struct demuxer* demuxer; } ;
typedef TYPE_1__ MPContext ;


 int M_PROPERTY_UNAVAILABLE ;
 int m_property_int_ro (int,void*,scalar_t__) ;

__attribute__((used)) static int mp_property_editions(void *ctx, struct m_property *prop,
                                int action, void *arg)
{
    MPContext *mpctx = ctx;
    struct demuxer *demuxer = mpctx->demuxer;
    if (!demuxer)
        return M_PROPERTY_UNAVAILABLE;
    if (demuxer->num_editions <= 0)
        return M_PROPERTY_UNAVAILABLE;
    return m_property_int_ro(action, arg, demuxer->num_editions);
}
