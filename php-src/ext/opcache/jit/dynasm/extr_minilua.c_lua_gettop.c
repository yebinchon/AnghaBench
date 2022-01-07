
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ base; scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;


 int cast_int (scalar_t__) ;

__attribute__((used)) static int lua_gettop(lua_State*L){
return cast_int(L->top-L->base);
}
