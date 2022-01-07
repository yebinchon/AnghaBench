
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock_count; int hloc32W; scalar_t__ text; } ;
typedef TYPE_1__ EDITSTATE ;


 scalar_t__ LocalLock (int ) ;

__attribute__((used)) static void EDIT_LockBuffer(EDITSTATE *es)
{
    if (!es->text)
    {
        if (!es->hloc32W)
            return;

        es->text = LocalLock(es->hloc32W);
    }

    es->lock_count++;
}
