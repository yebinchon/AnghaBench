
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct instruction {unsigned int num_srcs; int * src; int predicate; scalar_t__ has_predicate; } ;
struct bytecode_buffer {int dummy; } ;
struct bc_writer {TYPE_1__* funcs; } ;
struct TYPE_2__ {int (* srcreg ) (struct bc_writer*,int *,struct bytecode_buffer*) ;} ;


 int stub1 (struct bc_writer*,int *,struct bytecode_buffer*) ;
 int stub2 (struct bc_writer*,int *,struct bytecode_buffer*) ;

__attribute__((used)) static void write_srcregs(struct bc_writer *This, const struct instruction *instr,
                          struct bytecode_buffer *buffer){
    unsigned int i;
    if(instr->has_predicate){
        This->funcs->srcreg(This, &instr->predicate, buffer);
    }
    for(i = 0; i < instr->num_srcs; i++){
        This->funcs->srcreg(This, &instr->src[i], buffer);
    }
}
