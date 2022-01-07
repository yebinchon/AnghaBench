
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int text; } ;
typedef int LPWSTR ;
typedef int INT ;
typedef TYPE_1__ EDITSTATE ;


 int lstrcpynW (int ,int ,int ) ;
 int strlenW (int ) ;

__attribute__((used)) static INT EDIT_WM_GetText(const EDITSTATE *es, INT count, LPWSTR dst)
{
    if (!count)
        return 0;

    lstrcpynW(dst, es->text, count);
    return strlenW(dst);
}
