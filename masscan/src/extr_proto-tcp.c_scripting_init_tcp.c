
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lua_State {int dummy; } ;
struct TCP_ConnectionTable {TYPE_1__* banner1; } ;
struct TYPE_4__ {int (* init ) (TYPE_1__*) ;} ;
struct TYPE_3__ {struct lua_State* L; } ;


 TYPE_2__ banner_scripting ;
 int stub1 (TYPE_1__*) ;

void scripting_init_tcp(struct TCP_ConnectionTable *tcpcon, struct lua_State *L)
{
    tcpcon->banner1->L = L;

    banner_scripting.init(tcpcon->banner1);
}
