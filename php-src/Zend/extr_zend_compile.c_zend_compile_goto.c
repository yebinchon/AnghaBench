
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int znode ;
struct TYPE_8__ {scalar_t__ num; } ;
struct TYPE_9__ {int extended_value; TYPE_1__ op1; } ;
typedef TYPE_2__ zend_op ;
struct TYPE_10__ {struct TYPE_10__** child; } ;
typedef TYPE_3__ zend_ast ;
typedef scalar_t__ uint32_t ;
struct TYPE_11__ {int current_brk_cont; } ;


 TYPE_7__ CG (int ) ;
 int ZEND_GOTO ;
 int context ;
 scalar_t__ get_next_op_number () ;
 int zend_compile_expr (int *,TYPE_3__*) ;
 TYPE_2__* zend_emit_op (int *,int ,int *,int *) ;
 int zend_handle_loops_and_finally (int *) ;

void zend_compile_goto(zend_ast *ast)
{
 zend_ast *label_ast = ast->child[0];
 znode label_node;
 zend_op *opline;
 uint32_t opnum_start = get_next_op_number();

 zend_compile_expr(&label_node, label_ast);


 zend_handle_loops_and_finally(((void*)0));
 opline = zend_emit_op(((void*)0), ZEND_GOTO, ((void*)0), &label_node);
 opline->op1.num = get_next_op_number() - opnum_start - 1;
 opline->extended_value = CG(context).current_brk_cont;
}
