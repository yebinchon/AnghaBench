
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_log {int dummy; } ;
typedef int js_State ;
struct TYPE_2__ {struct mp_log* log; } ;


 TYPE_1__* jctx (int *) ;
 int js_error (int *,char*,char const*) ;
 int js_gettop (int *) ;
 char* js_tostring (int *,int) ;
 int mp_msg (struct mp_log*,int,char*,...) ;
 int mp_msg_find_level (char const*) ;
 int push_success (int *) ;

__attribute__((used)) static void script_log(js_State *J)
{
    const char *level = js_tostring(J, 1);
    int msgl = mp_msg_find_level(level);
    if (msgl < 0)
        js_error(J, "Invalid log level '%s'", level);

    struct mp_log *log = jctx(J)->log;
    for (int top = js_gettop(J), i = 2; i < top; i++)
        mp_msg(log, msgl, (i == 2 ? "%s" : " %s"), js_tostring(J, i));
    mp_msg(log, msgl, "\n");
    push_success(J);
}
