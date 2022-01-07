
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int qstr ;
struct TYPE_6__ {int ret_val; } ;
typedef TYPE_1__ nlr_buf_t ;
typedef int mp_parse_tree_t ;
typedef int mp_obj_t ;
struct TYPE_7__ {int source_name; } ;
typedef TYPE_2__ mp_lexer_t ;


 int MP_PARSE_FILE_INPUT ;
 int MP_QSTR__lt_stdin_gt_ ;
 int gc_init (int ,int ) ;
 int heap_end ;
 int heap_start ;
 int mp_call_function_0 (int ) ;
 int mp_compile (int *,int ,int) ;
 int mp_deinit () ;
 int mp_init () ;
 TYPE_2__* mp_lexer_new_from_str_len (int ,char const*,int ,int ) ;
 int mp_obj_get_type (int ) ;
 scalar_t__ mp_obj_is_subclass_fast (int ,int *) ;
 int mp_obj_list_init (int ,int ) ;
 int mp_obj_print_exception (int *,int ) ;
 int mp_parse (TYPE_2__*,int ) ;
 int mp_plat_print ;
 int mp_sys_argv ;
 int mp_sys_path ;
 int mp_type_SystemExit ;
 int nlr_pop () ;
 scalar_t__ nlr_push (TYPE_1__*) ;
 int strlen (char const*) ;
 int tinytest_set_test_failed_ () ;
 int tinytest_set_test_skipped_ () ;
 int tt_abort_msg (char*) ;
 scalar_t__ upytest_is_failed () ;

void upytest_execute_test(const char *src) {


    gc_init(heap_start, heap_end);
    mp_init();
    mp_obj_list_init(mp_sys_path, 0);
    mp_obj_list_init(mp_sys_argv, 0);

    nlr_buf_t nlr;
    if (nlr_push(&nlr) == 0) {
        mp_lexer_t *lex = mp_lexer_new_from_str_len(MP_QSTR__lt_stdin_gt_, src, strlen(src), 0);
        qstr source_name = lex->source_name;
        mp_parse_tree_t parse_tree = mp_parse(lex, MP_PARSE_FILE_INPUT);
        mp_obj_t module_fun = mp_compile(&parse_tree, source_name, 0);
        mp_call_function_0(module_fun);
        nlr_pop();
    } else {
        mp_obj_t exc = (mp_obj_t)nlr.ret_val;
        if (mp_obj_is_subclass_fast(mp_obj_get_type(exc), &mp_type_SystemExit)) {



            tinytest_set_test_skipped_();
            goto end;
        }
        mp_obj_print_exception(&mp_plat_print, exc);
        tt_abort_msg("Uncaught exception\n");
    }

    if (upytest_is_failed()) {
        tinytest_set_test_failed_();
    }

end:
    mp_deinit();
}
