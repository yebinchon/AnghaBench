
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int net_multicastJoinLeave (int *,int ) ;

__attribute__((used)) static int net_multicastLeave( lua_State* L ) {
 return net_multicastJoinLeave(L,0);
}
