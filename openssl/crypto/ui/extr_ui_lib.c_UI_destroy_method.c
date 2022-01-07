
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* name; int ex_data; } ;
typedef TYPE_1__ UI_METHOD ;


 int CRYPTO_EX_INDEX_UI_METHOD ;
 int CRYPTO_free_ex_data (int ,TYPE_1__*,int *) ;
 int OPENSSL_free (TYPE_1__*) ;

void UI_destroy_method(UI_METHOD *ui_method)
{
    if (ui_method == ((void*)0))
        return;
    CRYPTO_free_ex_data(CRYPTO_EX_INDEX_UI_METHOD, ui_method,
                        &ui_method->ex_data);
    OPENSSL_free(ui_method->name);
    ui_method->name = ((void*)0);
    OPENSSL_free(ui_method);
}
