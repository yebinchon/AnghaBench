
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_4__ {TYPE_1__* mpctx; } ;
struct TYPE_3__ {int input; } ;


 TYPE_2__* jctx (int *) ;
 int jsL_checkint (int *,int) ;
 scalar_t__ js_tostring (int *,int) ;
 int mp_input_set_section_mouse_area (int ,char*,int ,int ,int ,int ) ;
 int push_success (int *) ;

__attribute__((used)) static void script_input_set_section_mouse_area(js_State *J)
{
    char *section = (char *)js_tostring(J, 1);
    mp_input_set_section_mouse_area(jctx(J)->mpctx->input, section,
        jsL_checkint(J, 2), jsL_checkint(J, 3),
        jsL_checkint(J, 4), jsL_checkint(J, 5));
    push_success(J);
}
