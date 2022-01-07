
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_cmd {TYPE_1__* def; } ;
struct input_ctx {int key_history; } ;
struct TYPE_2__ {int is_ignore; } ;


 struct mp_cmd* get_cmd_from_keys (struct input_ctx*,int *,int) ;
 int key_buf_add (int ,int) ;
 int should_drop_cmd (struct input_ctx*,struct mp_cmd*) ;
 int talloc_free (struct mp_cmd*) ;
 int update_mouse_section (struct input_ctx*) ;

__attribute__((used)) static struct mp_cmd *resolve_key(struct input_ctx *ictx, int code)
{
    update_mouse_section(ictx);
    struct mp_cmd *cmd = get_cmd_from_keys(ictx, ((void*)0), code);
    key_buf_add(ictx->key_history, code);
    if (cmd && !cmd->def->is_ignore && !should_drop_cmd(ictx, cmd))
        return cmd;
    talloc_free(cmd);
    return ((void*)0);
}
