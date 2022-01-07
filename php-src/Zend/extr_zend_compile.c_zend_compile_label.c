
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zend_string ;
struct TYPE_6__ {int opline_num; int brk_cont; } ;
typedef TYPE_1__ zend_label ;
struct TYPE_7__ {int * child; } ;
typedef TYPE_2__ zend_ast ;
struct TYPE_8__ {int labels; int current_brk_cont; } ;


 int ALLOC_HASHTABLE (int ) ;
 TYPE_5__ CG (int ) ;
 int E_COMPILE_ERROR ;
 int ZSTR_VAL (int *) ;
 int context ;
 int get_next_op_number () ;
 int label_ptr_dtor ;
 int * zend_ast_get_str (int ) ;
 int zend_error_noreturn (int ,char*,int ) ;
 int zend_hash_add_mem (int ,int *,TYPE_1__*,int) ;
 int zend_hash_init (int ,int,int *,int ,int ) ;

void zend_compile_label(zend_ast *ast)
{
 zend_string *label = zend_ast_get_str(ast->child[0]);
 zend_label dest;

 if (!CG(context).labels) {
  ALLOC_HASHTABLE(CG(context).labels);
  zend_hash_init(CG(context).labels, 8, ((void*)0), label_ptr_dtor, 0);
 }

 dest.brk_cont = CG(context).current_brk_cont;
 dest.opline_num = get_next_op_number();

 if (!zend_hash_add_mem(CG(context).labels, label, &dest, sizeof(zend_label))) {
  zend_error_noreturn(E_COMPILE_ERROR, "Label '%s' already defined", ZSTR_VAL(label));
 }
}
