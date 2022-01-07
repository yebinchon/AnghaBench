
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int jclient (int *) ;
 int js_pushnumber (int *,int ) ;
 int mpv_get_wakeup_pipe (int ) ;

__attribute__((used)) static void script_get_wakeup_pipe(js_State *J)
{
    js_pushnumber(J, mpv_get_wakeup_pipe(jclient(J)));
}
