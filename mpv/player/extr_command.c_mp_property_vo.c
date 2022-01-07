
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct m_property {int dummy; } ;
struct TYPE_6__ {TYPE_2__* video_out; } ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_4__ {int * name; } ;
typedef TYPE_3__ MPContext ;


 int m_property_strdup_ro (int,void*,int *) ;

__attribute__((used)) static int mp_property_vo(void *ctx, struct m_property *p, int action, void *arg)
{
    MPContext *mpctx = ctx;
    return m_property_strdup_ro(action, arg,
                    mpctx->video_out ? mpctx->video_out->driver->name : ((void*)0));
}
