
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int znode ;
struct TYPE_5__ {struct TYPE_5__** child; } ;
typedef TYPE_1__ zend_ast ;
typedef int uint32_t ;


 int ZEND_JMPNZ ;
 int ZEND_NOP ;
 int get_next_op_number () ;
 int zend_begin_loop (int ,int *,int ) ;
 int zend_compile_expr (int *,TYPE_1__*) ;
 int zend_compile_stmt (TYPE_1__*) ;
 int zend_emit_cond_jump (int ,int *,int ) ;
 int zend_end_loop (int ,int *) ;

void zend_compile_do_while(zend_ast *ast)
{
 zend_ast *stmt_ast = ast->child[0];
 zend_ast *cond_ast = ast->child[1];

 znode cond_node;
 uint32_t opnum_start, opnum_cond;

 zend_begin_loop(ZEND_NOP, ((void*)0), 0);

 opnum_start = get_next_op_number();
 zend_compile_stmt(stmt_ast);

 opnum_cond = get_next_op_number();
 zend_compile_expr(&cond_node, cond_ast);

 zend_emit_cond_jump(ZEND_JMPNZ, &cond_node, opnum_start);

 zend_end_loop(opnum_cond, ((void*)0));
}
