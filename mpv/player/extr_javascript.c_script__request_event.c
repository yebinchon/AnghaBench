
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int jclient (int *) ;
 int js_toboolean (int *,int) ;
 char* js_tostring (int *,int) ;
 char* mpv_event_name (int) ;
 int mpv_request_event (int ,int,int) ;
 int push_failure (int *,char*) ;
 int push_status (int *,int ) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static void script__request_event(js_State *J)
{
    const char *event = js_tostring(J, 1);
    bool enable = js_toboolean(J, 2);

    const char *name;
    for (int n = 0; n < 256 && (name = mpv_event_name(n)); n++) {
        if (strcmp(name, event) == 0) {
            push_status(J, mpv_request_event(jclient(J), n, enable));
            return;
        }
    }
    push_failure(J, "Unknown event name");
}
