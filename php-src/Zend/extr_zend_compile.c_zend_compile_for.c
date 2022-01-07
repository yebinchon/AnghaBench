
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
 int zend_compile_expr_list (int *,TYPE_1__*) ;
 int zend_compile_stmt (TYPE_1__*) ;
 int zend_do_extended_stmt () ;
 int zend_do_free (int *) ;
 int zend_emit_cond_jump (int ,int *,int ) ;
 int zend_emit_jump (int ) ;
 int zend_end_loop (int ,int *) ;
 int zend_update_jump_target_to_next (int ) ;

void zend_compile_for(zend_ast *ast)
{
 zend_ast *init_ast = ast->child[0];
 zend_ast *cond_ast = ast->child[1];
 zend_ast *loop_ast = ast->child[2];
 zend_ast *stmt_ast = ast->child[3];

 znode result;
 uint32_t opnum_start, opnum_jmp, opnum_loop;

 zend_compile_expr_list(&result, init_ast);
 zend_do_free(&result);

 opnum_jmp = zend_emit_jump(0);

 zend_begin_loop(ZEND_NOP, ((void*)0), 0);

 opnum_start = get_next_op_number();
 zend_compile_stmt(stmt_ast);

 opnum_loop = get_next_op_number();
 zend_compile_expr_list(&result, loop_ast);
 zend_do_free(&result);

 zend_update_jump_target_to_next(opnum_jmp);
 zend_compile_expr_list(&result, cond_ast);
 zend_do_extended_stmt();

 zend_emit_cond_jump(ZEND_JMPNZ, &result, opnum_start);

 zend_end_loop(opnum_loop, ((void*)0));
}
