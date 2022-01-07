
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_cmd_ctx {struct cmd_list_ctx* on_completion_priv; } ;
struct cmd_list_ctx {int completed_recursive; int current; scalar_t__ current_valid; } ;


 int continue_cmd_list (struct cmd_list_ctx*) ;
 scalar_t__ pthread_equal (int ,int ) ;
 int pthread_self () ;

__attribute__((used)) static void on_cmd_list_sub_completion(struct mp_cmd_ctx *cmd)
{
    struct cmd_list_ctx *list = cmd->on_completion_priv;

    if (list->current_valid && pthread_equal(list->current, pthread_self())) {
        list->completed_recursive = 1;
    } else {
        continue_cmd_list(list);
    }
}
