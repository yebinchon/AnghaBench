
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mp_cmd {int flags; struct mp_cmd* queue_next; } ;
struct cmd_list_ctx {int completed_recursive; int current_valid; TYPE_3__* parent; int mpctx; int current; } ;
struct TYPE_6__ {TYPE_2__* args; } ;
struct TYPE_4__ {struct mp_cmd* p; } ;
struct TYPE_5__ {TYPE_1__ v; } ;


 int MP_ASYNC_CMD ;
 int mp_cmd_ctx_complete (TYPE_3__*) ;
 int * on_cmd_list_sub_completion ;
 int pthread_self () ;
 int run_command (int ,struct mp_cmd*,int *,int *,struct cmd_list_ctx*) ;
 int ta_xset_parent (struct mp_cmd*,int *) ;
 int talloc_free (struct cmd_list_ctx*) ;

__attribute__((used)) static void continue_cmd_list(struct cmd_list_ctx *list)
{
    while (list->parent->args[0].v.p) {
        struct mp_cmd *sub = list->parent->args[0].v.p;
        list->parent->args[0].v.p = sub->queue_next;

        ta_xset_parent(sub, ((void*)0));

        if (sub->flags & MP_ASYNC_CMD) {

            run_command(list->mpctx, sub, ((void*)0), ((void*)0), ((void*)0));
        } else {


            list->completed_recursive = 0;
            list->current_valid = 1;
            list->current = pthread_self();

            run_command(list->mpctx, sub, ((void*)0), on_cmd_list_sub_completion, list);

            list->current_valid = 0;







            if (!list->completed_recursive)
                return;
        }
    }

    mp_cmd_ctx_complete(list->parent);
    talloc_free(list);
}
