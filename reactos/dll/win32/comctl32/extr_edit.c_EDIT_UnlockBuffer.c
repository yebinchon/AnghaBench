
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock_count; int * text; scalar_t__ hloc32W; int hwndSelf; } ;
typedef TYPE_1__ EDITSTATE ;
typedef scalar_t__ BOOL ;


 int ERR (char*) ;
 int IsWindow (int ) ;
 int LocalUnlock (scalar_t__) ;
 int WARN (char*,int ) ;

__attribute__((used)) static void EDIT_UnlockBuffer(EDITSTATE *es, BOOL force)
{

    if (!IsWindow(es->hwndSelf))
    {
        WARN("edit hwnd %p already destroyed\n", es->hwndSelf);
        return;
    }

    if (!es->lock_count)
    {
        ERR("lock_count == 0 ... please report\n");
        return;
    }

    if (!es->text)
    {
        ERR("es->text == 0 ... please report\n");
        return;
    }

    if (force || (es->lock_count == 1))
    {
        if (es->hloc32W)
        {
            LocalUnlock(es->hloc32W);
            es->text = ((void*)0);
        }
        else
        {
            ERR("no buffer ... please report\n");
            return;
        }

    }

    es->lock_count--;
}
