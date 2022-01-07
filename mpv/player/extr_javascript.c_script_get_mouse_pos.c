
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
 int mp_input_get_mouse_pos (int ,int*,int*) ;
 int push_nums_obj (int *,char const* const*,double const*) ;

__attribute__((used)) static void script_get_mouse_pos(js_State *J)
{
    int x, y;
    mp_input_get_mouse_pos(jctx(J)->mpctx->input, &x, &y);
    const char * const names[] = {"x", "y", ((void*)0)};
    const double vals[] = {x, y};
    push_nums_obj(J, names, vals);
}
