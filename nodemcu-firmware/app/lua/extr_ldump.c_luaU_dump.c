
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int strsize_t ;
typedef int lua_Writer ;
typedef int lua_State ;
typedef scalar_t__ lua_Number ;
struct TYPE_3__ {char little_endian; int sizeof_int; int sizeof_strsize_t; int sizeof_lua_Number; int lua_Number_integral; scalar_t__ is_arm_fpa; } ;
typedef int Proto ;
typedef TYPE_1__ DumpTargetInfo ;


 int luaU_dump_crosscompile (int *,int const*,int ,void*,int,TYPE_1__) ;

int luaU_dump (lua_State* L, const Proto* f, lua_Writer w, void* data, int strip)
{
 DumpTargetInfo target;
 int test=1;
 target.little_endian=*(char*)&test;
 target.sizeof_int=sizeof(int);
 target.sizeof_strsize_t=sizeof(strsize_t);
 target.sizeof_lua_Number=sizeof(lua_Number);
 target.lua_Number_integral=(((lua_Number)0.5)==0);
 target.is_arm_fpa=0;
 return luaU_dump_crosscompile(L,f,w,data,strip,target);
}
