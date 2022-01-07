
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lua_State {int dummy; } ;


 int UNUSEDPARM (struct lua_State*) ;

__attribute__((used)) static int mass_gc(struct lua_State *L)
{



    UNUSEDPARM(L);







    return 0;
}
