
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {int dummy; } ;


 scalar_t__ run_next_hook_handler (struct MPContext*,char*,int ) ;

void mp_hook_start(struct MPContext *mpctx, char *type)
{
    while (run_next_hook_handler(mpctx, type, 0) < 0) {


    }
}
