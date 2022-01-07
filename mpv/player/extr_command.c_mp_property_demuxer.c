
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct m_property {int dummy; } ;
struct demuxer {TYPE_1__* desc; } ;
struct TYPE_4__ {struct demuxer* demuxer; } ;
struct TYPE_3__ {int name; } ;
typedef TYPE_2__ MPContext ;


 int M_PROPERTY_UNAVAILABLE ;
 int m_property_strdup_ro (int,void*,int ) ;

__attribute__((used)) static int mp_property_demuxer(void *ctx, struct m_property *prop,
                               int action, void *arg)
{
    MPContext *mpctx = ctx;
    struct demuxer *demuxer = mpctx->demuxer;
    if (!demuxer)
        return M_PROPERTY_UNAVAILABLE;
    return m_property_strdup_ro(action, arg, demuxer->desc->name);
}
