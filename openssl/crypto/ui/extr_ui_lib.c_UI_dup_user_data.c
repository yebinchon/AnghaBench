
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int flags; TYPE_1__* meth; } ;
typedef TYPE_2__ UI ;
struct TYPE_6__ {void* (* ui_duplicate_data ) (TYPE_2__*,void*) ;int * ui_destroy_data; } ;


 int ERR_R_MALLOC_FAILURE ;
 int UI_FLAG_DUPL_DATA ;
 int UI_F_UI_DUP_USER_DATA ;
 int UI_R_USER_DATA_DUPLICATION_UNSUPPORTED ;
 int UI_add_user_data (TYPE_2__*,void*) ;
 int UIerr (int ,int ) ;
 void* stub1 (TYPE_2__*,void*) ;

int UI_dup_user_data(UI *ui, void *user_data)
{
    void *duplicate = ((void*)0);

    if (ui->meth->ui_duplicate_data == ((void*)0)
        || ui->meth->ui_destroy_data == ((void*)0)) {
        UIerr(UI_F_UI_DUP_USER_DATA, UI_R_USER_DATA_DUPLICATION_UNSUPPORTED);
        return -1;
    }

    duplicate = ui->meth->ui_duplicate_data(ui, user_data);
    if (duplicate == ((void*)0)) {
        UIerr(UI_F_UI_DUP_USER_DATA, ERR_R_MALLOC_FAILURE);
        return -1;
    }

    (void)UI_add_user_data(ui, duplicate);
    ui->flags |= UI_FLAG_DUPL_DATA;

    return 0;
}
