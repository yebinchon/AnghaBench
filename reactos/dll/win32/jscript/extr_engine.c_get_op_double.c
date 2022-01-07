
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_5__* call_ctx; } ;
typedef TYPE_4__ script_ctx_t ;
struct TYPE_11__ {size_t ip; TYPE_3__* bytecode; } ;
typedef TYPE_5__ call_frame_t ;
struct TYPE_9__ {TYPE_2__* instrs; } ;
struct TYPE_7__ {double dbl; } ;
struct TYPE_8__ {TYPE_1__ u; } ;



__attribute__((used)) static inline double get_op_double(script_ctx_t *ctx)
{
    call_frame_t *frame = ctx->call_ctx;
    return frame->bytecode->instrs[frame->ip].u.dbl;
}
