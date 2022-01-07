
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {TYPE_6__* call_ctx; } ;
typedef TYPE_5__ script_ctx_t ;
typedef int jsstr_t ;
struct TYPE_13__ {size_t ip; TYPE_4__* bytecode; } ;
typedef TYPE_6__ call_frame_t ;
struct TYPE_11__ {TYPE_3__* instrs; } ;
struct TYPE_9__ {TYPE_1__* arg; } ;
struct TYPE_10__ {TYPE_2__ u; } ;
struct TYPE_8__ {int * str; } ;



__attribute__((used)) static inline jsstr_t *get_op_str(script_ctx_t *ctx, int i)
{
    call_frame_t *frame = ctx->call_ctx;
    return frame->bytecode->instrs[frame->ip].u.arg[i].str;
}
