
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int MP_ARRAY_SIZE (char const**) ;
 int MP_CMD_MAX_ARGS ;
 int jclient (int *) ;
 int js_error (int *,char*) ;
 int js_gettop (int *) ;
 char* js_tostring (int *,int) ;
 int mpv_command (int ,char const**) ;
 int push_status (int *,int ) ;

__attribute__((used)) static void script_commandv(js_State *J)
{
    const char *argv[MP_CMD_MAX_ARGS + 1];
    int length = js_gettop(J) - 1;
    if (length >= MP_ARRAY_SIZE(argv))
        js_error(J, "Too many arguments");

    for (int i = 0; i < length; i++)
        argv[i] = js_tostring(J, 1 + i);
    argv[length] = ((void*)0);
    push_status(J, mpv_command(jclient(J), argv));
}
