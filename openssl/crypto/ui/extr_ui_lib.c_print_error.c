
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uis ;
struct TYPE_9__ {char const* out_string; int type; } ;
typedef TYPE_2__ UI_STRING ;
struct TYPE_10__ {TYPE_1__* meth; } ;
typedef TYPE_3__ UI ;
struct TYPE_8__ {scalar_t__ (* ui_write_string ) (TYPE_3__*,TYPE_2__*) ;} ;


 int UIT_ERROR ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ stub1 (TYPE_3__*,TYPE_2__*) ;

__attribute__((used)) static int print_error(const char *str, size_t len, UI *ui)
{
    UI_STRING uis;

    memset(&uis, 0, sizeof(uis));
    uis.type = UIT_ERROR;
    uis.out_string = str;

    if (ui->meth->ui_write_string != ((void*)0)
        && ui->meth->ui_write_string(ui, &uis) <= 0)
        return -1;
    return 0;
}
