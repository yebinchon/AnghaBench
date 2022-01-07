
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int break_stack; int cons_stack; } ;
typedef TYPE_1__ RConsContext ;


 int r_cons_pal_free (TYPE_1__*) ;
 int r_stack_free (int ) ;

__attribute__((used)) static void cons_context_deinit(RConsContext *context) {
 r_stack_free (context->cons_stack);
 r_stack_free (context->break_stack);
 r_cons_pal_free (context);
}
