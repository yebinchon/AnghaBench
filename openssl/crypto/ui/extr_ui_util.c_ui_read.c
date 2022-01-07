
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pem_password_cb_data {int (* cb ) (char*,int,int ,int ) ;int rwflag; } ;
typedef int UI_STRING ;
typedef int UI ;


 int PEM_BUFSIZE ;






 int UI_get0_user_data (int *) ;
 int UI_get_method (int *) ;
 int UI_get_result_maxsize (int *) ;
 int UI_get_string_type (int *) ;
 struct pem_password_cb_data* UI_method_get_ex_data (int ,int ) ;
 int UI_set_result_ex (int *,int *,char*,int) ;
 int stub1 (char*,int,int ,int ) ;
 int ui_method_data_index ;

__attribute__((used)) static int ui_read(UI *ui, UI_STRING *uis)
{
    switch (UI_get_string_type(uis)) {
    case 129:
        {
            char result[PEM_BUFSIZE + 1];
            const struct pem_password_cb_data *data =
                UI_method_get_ex_data(UI_get_method(ui), ui_method_data_index);
            int maxsize = UI_get_result_maxsize(uis);
            int len = data->cb(result,
                               maxsize > PEM_BUFSIZE ? PEM_BUFSIZE : maxsize,
                               data->rwflag, UI_get0_user_data(ui));

            if (len >= 0)
                result[len] = '\0';
            if (len <= 0)
                return len;
            if (UI_set_result_ex(ui, uis, result, len) >= 0)
                return 1;
            return 0;
        }
    case 128:
    case 130:
    case 133:
    case 131:
    case 132:
        break;
    }
    return 1;
}
