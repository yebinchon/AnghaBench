
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int js_State ;


 int jclient (int *) ;
 int jsL_checkint (int *,int) ;
 int jsL_checkuint64 (int *,int) ;
 char* js_tostring (int *,int) ;
 int mpv_hook_add (int ,int ,char const*,int) ;
 int push_status (int *,int ) ;

__attribute__((used)) static void script__hook_add(js_State *J)
{
    const char *name = js_tostring(J, 1);
    int pri = jsL_checkint(J, 2);
    uint64_t id = jsL_checkuint64(J, 3);
    push_status(J, mpv_hook_add(jclient(J), id, name, pri));
}
