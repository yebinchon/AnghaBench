
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int jclient (int *) ;
 int jsL_checkuint64 (int *,int) ;
 int mpv_hook_continue (int ,int ) ;
 int push_status (int *,int ) ;

__attribute__((used)) static void script__hook_continue(js_State *J)
{
    push_status(J, mpv_hook_continue(jclient(J), jsL_checkuint64(J, 1)));
}
