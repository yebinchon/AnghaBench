
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_ctx {char* mouse_section; } ;
struct cmd_bind {TYPE_1__* owner; } ;
struct TYPE_2__ {char* section; } ;


 int MP_KEY_MOUSE_LEAVE ;
 int MP_KEY_MOUSE_MOVE ;
 int MP_TRACE (struct input_ctx*,char*,char*,char*) ;
 struct cmd_bind* find_any_bind_for_key (struct input_ctx*,int *,int ) ;
 int get_cmd_from_keys (struct input_ctx*,char*,int ) ;
 int mp_input_queue_cmd (struct input_ctx*,int ) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void update_mouse_section(struct input_ctx *ictx)
{
    struct cmd_bind *bind =
        find_any_bind_for_key(ictx, ((void*)0), MP_KEY_MOUSE_MOVE);

    char *new_section = bind ? bind->owner->section : "default";

    char *old = ictx->mouse_section;
    ictx->mouse_section = new_section;

    if (strcmp(old, ictx->mouse_section) != 0) {
        MP_TRACE(ictx, "input: switch section %s -> %s\n",
                 old, ictx->mouse_section);
        mp_input_queue_cmd(ictx, get_cmd_from_keys(ictx, old, MP_KEY_MOUSE_LEAVE));
    }
}
