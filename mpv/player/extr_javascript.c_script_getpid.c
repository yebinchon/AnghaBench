
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_pushnumber (int *,int ) ;
 int mp_getpid () ;

__attribute__((used)) static void script_getpid(js_State *J)
{
    js_pushnumber(J, mp_getpid());
}
