
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pass ;
typedef int UI_METHOD ;
typedef int UI ;


 int TEST_info (char*) ;
 int TEST_ptr (int *) ;
 scalar_t__ TEST_str_eq (char*,char*) ;
 int UI_INPUT_FLAG_DEFAULT_PWD ;
 int * UI_UTIL_wrap_read_pem_callback (int ,int ) ;
 int UI_add_input_string (int *,char*,int ,char*,int ,int) ;
 int UI_add_user_data (int *,char*) ;
 int UI_destroy_method (int *) ;
 int UI_free (int *) ;
 int * UI_new_method (int *) ;
 int UI_process (int *) ;
 int test_pem_password_cb ;

__attribute__((used)) static int test_old(void)
{
    UI_METHOD *ui_method = ((void*)0);
    UI *ui = ((void*)0);
    char defpass[] = "password";
    char pass[16];
    int ok = 0;

    if (!TEST_ptr(ui_method =
                  UI_UTIL_wrap_read_pem_callback( test_pem_password_cb, 0))
            || !TEST_ptr(ui = UI_new_method(ui_method)))
        goto err;


    UI_add_user_data(ui, defpass);

    if (!UI_add_input_string(ui, "prompt", UI_INPUT_FLAG_DEFAULT_PWD,
                             pass, 0, sizeof(pass) - 1))
        goto err;

    switch (UI_process(ui)) {
    case -2:
        TEST_info("test_old: UI process interrupted or cancelled");

    case -1:
        goto err;
    default:
        break;
    }

    if (TEST_str_eq(pass, defpass))
        ok = 1;

 err:
    UI_free(ui);
    UI_destroy_method(ui_method);

    return ok;
}
