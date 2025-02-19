
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int qstr ;
struct TYPE_3__ {int ret_val; } ;
typedef TYPE_1__ nlr_buf_t ;
typedef int mp_parse_tree_t ;
typedef int mp_obj_t ;
typedef int mp_lexer_t ;


 int MP_PARSE_FILE_INPUT ;
 int mp_call_function_0 (int ) ;
 int mp_compile (int *,int,int) ;
 int * mp_lexer_new_from_str_len (int,char const*,int ,int) ;
 int mp_parse (int *,int ) ;
 int nlr_pop () ;
 scalar_t__ nlr_push (TYPE_1__*) ;
 int strlen (char const*) ;

mp_obj_t execute_from_str(const char *str) {
    nlr_buf_t nlr;
    if (nlr_push(&nlr) == 0) {
        qstr src_name = 1 ;
        mp_lexer_t *lex = mp_lexer_new_from_str_len(src_name, str, strlen(str), 0);
        mp_parse_tree_t pt = mp_parse(lex, MP_PARSE_FILE_INPUT);
        mp_obj_t module_fun = mp_compile(&pt, src_name, 0);
        mp_call_function_0(module_fun);
        nlr_pop();
        return 0;
    } else {

        return (mp_obj_t)nlr.ret_val;
    }
}
