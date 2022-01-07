
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_ctx {struct cmd_bind_section* cmd_bind_sections; } ;
struct cmd_bind_section {struct cmd_bind_section* next; int section; scalar_t__ owner; } ;


 int input_lock (struct input_ctx*) ;
 int input_unlock (struct input_ctx*) ;
 int mp_input_disable_section (struct input_ctx*,int ) ;
 int remove_binds (struct cmd_bind_section*,int) ;
 scalar_t__ strcmp (scalar_t__,char*) ;

void mp_input_remove_sections_by_owner(struct input_ctx *ictx, char *owner)
{
    input_lock(ictx);
    struct cmd_bind_section *bs = ictx->cmd_bind_sections;
    while (bs) {
        if (bs->owner && owner && strcmp(bs->owner, owner) == 0) {
            mp_input_disable_section(ictx, bs->section);
            remove_binds(bs, 0);
            remove_binds(bs, 1);
        }
        bs = bs->next;
    }
    input_unlock(ictx);
}
