
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * string; struct TYPE_5__* prev; struct TYPE_5__* next; } ;
typedef TYPE_1__* LPHIST_ENTRY ;
typedef int * LPCTSTR ;
typedef scalar_t__ INT ;


 int ASSERT (int) ;
 TYPE_1__* Bottom ;
 TYPE_1__* Top ;
 TYPE_1__* curr_ptr ;

LPCTSTR PeekHistory(INT dir)
{
    LPHIST_ENTRY entry = curr_ptr;

    ASSERT(Top && Bottom);

    if (dir == 0)
        return ((void*)0);

    if (dir < 0)
    {

        if (entry->next == Top || entry == Top)
        {



            return ((void*)0);

        }
        entry = entry->next;
    }
    else
    {

        if (entry->prev == Bottom || entry == Bottom)
        {



            return ((void*)0);

        }
        entry = entry->prev;
    }

    return entry->string;
}
