
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_client_api {struct MPContext* mpctx; } ;
struct MPContext {int dummy; } ;



struct MPContext *mp_client_api_get_core(struct mp_client_api *api)
{
    return api->mpctx;
}
