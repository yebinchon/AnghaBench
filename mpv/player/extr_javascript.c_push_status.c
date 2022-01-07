
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int mpv_error_string (int) ;
 int push_failure (int *,int ) ;
 int push_success (int *) ;

__attribute__((used)) static void push_status(js_State *J, int err)
{
    if (err >= 0) {
        push_success(J);
    } else {
        push_failure(J, mpv_error_string(err));
    }
}
