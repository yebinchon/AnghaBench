
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int g_read (int *,int ,int) ;
 int tofile (int *) ;

__attribute__((used)) static int f_read(lua_State*L){
return g_read(L,tofile(L),2);
}
