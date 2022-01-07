
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int jclient (int *) ;
 int jsL_checkuint64 (int *,int) ;
 int mpv_abort_async_command (int ,int ) ;
 int push_success (int *) ;

__attribute__((used)) static void script__abort_async_command(js_State *J)
{
    mpv_abort_async_command(jclient(J), jsL_checkuint64(J, 1));
    push_success(J);
}
