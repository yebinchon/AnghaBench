
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* cp_prev; struct TYPE_3__* cp_next; } ;
typedef TYPE_1__ compl_T ;


 TYPE_1__* compl_first_match ;

__attribute__((used)) static int
ins_compl_make_cyclic()
{
    compl_T *match;
    int count = 0;

    if (compl_first_match != ((void*)0))
    {



 match = compl_first_match;

 while (match->cp_next != ((void*)0) && match->cp_next != compl_first_match)
 {
     match = match->cp_next;
     ++count;
 }
 match->cp_next = compl_first_match;
 compl_first_match->cp_prev = match;
    }
    return count;
}
