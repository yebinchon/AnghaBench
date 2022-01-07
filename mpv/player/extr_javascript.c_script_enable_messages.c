
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int jclient (int *) ;
 int js_error (int *,char*,char const*) ;
 char* js_tostring (int *,int) ;
 scalar_t__ mp_msg_find_level (char const*) ;
 int mpv_request_log_messages (int ,char const*) ;
 int push_status (int *,int ) ;

__attribute__((used)) static void script_enable_messages(js_State *J)
{
    const char *level = js_tostring(J, 1);
    if (mp_msg_find_level(level) < 0)
        js_error(J, "Invalid log level '%s'", level);
    push_status(J, mpv_request_log_messages(jclient(J), level));
}
