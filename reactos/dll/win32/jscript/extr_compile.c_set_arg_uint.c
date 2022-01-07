
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int compiler_ctx_t ;
struct TYPE_5__ {TYPE_1__* arg; } ;
struct TYPE_6__ {TYPE_2__ u; } ;
struct TYPE_4__ {unsigned int uint; } ;


 TYPE_3__* instr_ptr (int *,unsigned int) ;

__attribute__((used)) static inline void set_arg_uint(compiler_ctx_t *ctx, unsigned instr, unsigned arg)
{
    instr_ptr(ctx, instr)->u.arg->uint = arg;
}
