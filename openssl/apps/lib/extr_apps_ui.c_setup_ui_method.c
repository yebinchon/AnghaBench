
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_OpenSSL () ;
 int UI_create_method (char*) ;
 int UI_method_set_closer (int ,int ) ;
 int UI_method_set_opener (int ,int ) ;
 int UI_method_set_reader (int ,int ) ;
 int UI_method_set_writer (int ,int ) ;
 int UI_null () ;
 int ui_close ;
 int ui_fallback_method ;
 int ui_method ;
 int ui_open ;
 int ui_read ;
 int ui_write ;

int setup_ui_method(void)
{
    ui_fallback_method = UI_null();

    ui_fallback_method = UI_OpenSSL();

    ui_method = UI_create_method("OpenSSL application user interface");
    UI_method_set_opener(ui_method, ui_open);
    UI_method_set_reader(ui_method, ui_read);
    UI_method_set_writer(ui_method, ui_write);
    UI_method_set_closer(ui_method, ui_close);
    return 0;
}
