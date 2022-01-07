
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int jclient (int *) ;
 int js_tostring (int *,int) ;
 int mpv_command_string (int ,int ) ;
 int push_status (int *,int ) ;

__attribute__((used)) static void script_command(js_State *J)
{
    push_status(J, mpv_command_string(jclient(J), js_tostring(J, 1)));
}
