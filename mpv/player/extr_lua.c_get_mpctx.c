
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct MPContext {int dummy; } ;
typedef int lua_State ;
struct TYPE_2__ {struct MPContext* mpctx; } ;


 TYPE_1__* get_ctx (int *) ;

__attribute__((used)) static struct MPContext *get_mpctx(lua_State *L)
{
    return get_ctx(L)->mpctx;
}
