
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct m_property {int dummy; } ;
struct TYPE_2__ {scalar_t__ ao; } ;
typedef TYPE_1__ MPContext ;


 int * ao_get_name (scalar_t__) ;
 int m_property_strdup_ro (int,void*,int *) ;

__attribute__((used)) static int mp_property_ao(void *ctx, struct m_property *p, int action, void *arg)
{
    MPContext *mpctx = ctx;
    return m_property_strdup_ro(action, arg,
                                    mpctx->ao ? ao_get_name(mpctx->ao) : ((void*)0));
}
