
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_ctx {int num_active_sections; struct active_section* active_sections; } ;
struct cmd_bind_section {int mouse_area; scalar_t__ mouse_area_set; } ;
struct active_section {int flags; int name; } ;


 int bstr0 (int ) ;
 struct cmd_bind_section* get_bind_section (struct input_ctx*,int ) ;
 int input_lock (struct input_ctx*) ;
 int input_unlock (struct input_ctx*) ;
 scalar_t__ test_rect (int *,int,int) ;

__attribute__((used)) static bool test_mouse(struct input_ctx *ictx, int x, int y, int rej_flags)
{
    input_lock(ictx);
    bool res = 0;
    for (int i = 0; i < ictx->num_active_sections; i++) {
        struct active_section *as = &ictx->active_sections[i];
        if (as->flags & rej_flags)
            continue;
        struct cmd_bind_section *s = get_bind_section(ictx, bstr0(as->name));
        if (s->mouse_area_set && test_rect(&s->mouse_area, x, y)) {
            res = 1;
            break;
        }
    }
    input_unlock(ictx);
    return res;
}
