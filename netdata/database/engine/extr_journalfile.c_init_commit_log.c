
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int transaction_id; scalar_t__ buf_pos; int * buf; } ;
struct rrdengine_instance {TYPE_1__ commit_log; } ;



void init_commit_log(struct rrdengine_instance *ctx)
{
    ctx->commit_log.buf = ((void*)0);
    ctx->commit_log.buf_pos = 0;
    ctx->commit_log.transaction_id = 1;
}
