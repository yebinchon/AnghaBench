
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int qstr ;
struct TYPE_6__ {scalar_t__ ret_val; } ;
typedef TYPE_1__ nlr_buf_t ;
typedef int mp_parse_tree_t ;
typedef int mp_parse_input_kind_t ;
typedef int mp_obj_t ;
struct TYPE_7__ {int source_name; } ;
typedef TYPE_2__ mp_lexer_t ;


 int MP_QSTR__lt_stdin_gt_ ;
 int mp_call_function_0 (int ) ;
 int mp_compile (int *,int ,int) ;
 TYPE_2__* mp_lexer_new_from_str_len (int ,char const*,int ,int ) ;
 int mp_obj_print_exception (int *,int ) ;
 int mp_parse (TYPE_2__*,int ) ;
 int mp_plat_print ;
 int nlr_pop () ;
 scalar_t__ nlr_push (TYPE_1__*) ;
 int strlen (char const*) ;

void do_str(const char *src, mp_parse_input_kind_t input_kind) {
    nlr_buf_t nlr;
    if (nlr_push(&nlr) == 0) {
        mp_lexer_t *lex = mp_lexer_new_from_str_len(MP_QSTR__lt_stdin_gt_, src, strlen(src), 0);
        qstr source_name = lex->source_name;
        mp_parse_tree_t parse_tree = mp_parse(lex, input_kind);
        mp_obj_t module_fun = mp_compile(&parse_tree, source_name, 1);
        mp_call_function_0(module_fun);
        nlr_pop();
    } else {

        mp_obj_print_exception(&mp_plat_print, (mp_obj_t)nlr.ret_val);
    }
}
