
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pem_password_cb_data {int rwflag; int * cb; } ;
typedef int pem_password_cb ;
typedef int UI_METHOD ;


 int OPENSSL_free (struct pem_password_cb_data*) ;
 struct pem_password_cb_data* OPENSSL_zalloc (int) ;
 int RUN_ONCE (int *,int ) ;
 int * UI_create_method (char*) ;
 int UI_destroy_method (int *) ;
 scalar_t__ UI_method_set_closer (int *,int ) ;
 scalar_t__ UI_method_set_ex_data (int *,int ,struct pem_password_cb_data*) ;
 scalar_t__ UI_method_set_opener (int *,int ) ;
 scalar_t__ UI_method_set_reader (int *,int ) ;
 scalar_t__ UI_method_set_writer (int *,int ) ;
 int get_index_once ;
 int ui_close ;
 int ui_method_data_index ;
 int ui_method_data_index_init ;
 int ui_open ;
 int ui_read ;
 int ui_write ;

UI_METHOD *UI_UTIL_wrap_read_pem_callback(pem_password_cb *cb, int rwflag)
{
    struct pem_password_cb_data *data = ((void*)0);
    UI_METHOD *ui_method = ((void*)0);

    if ((data = OPENSSL_zalloc(sizeof(*data))) == ((void*)0)
        || (ui_method = UI_create_method("PEM password callback wrapper")) == ((void*)0)
        || UI_method_set_opener(ui_method, ui_open) < 0
        || UI_method_set_reader(ui_method, ui_read) < 0
        || UI_method_set_writer(ui_method, ui_write) < 0
        || UI_method_set_closer(ui_method, ui_close) < 0
        || !RUN_ONCE(&get_index_once, ui_method_data_index_init)
        || UI_method_set_ex_data(ui_method, ui_method_data_index, data) < 0) {
        UI_destroy_method(ui_method);
        OPENSSL_free(data);
        return ((void*)0);
    }
    data->rwflag = rwflag;
    data->cb = cb;

    return ui_method;
}
