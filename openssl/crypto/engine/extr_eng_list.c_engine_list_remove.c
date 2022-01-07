
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* prev; struct TYPE_6__* next; } ;
typedef TYPE_1__ ENGINE ;


 int ENGINE_F_ENGINE_LIST_REMOVE ;
 int ENGINE_R_ENGINE_IS_NOT_IN_LIST ;
 int ENGINEerr (int ,int ) ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 int engine_free_util (TYPE_1__*,int ) ;
 TYPE_1__* engine_list_head ;
 TYPE_1__* engine_list_tail ;

__attribute__((used)) static int engine_list_remove(ENGINE *e)
{
    ENGINE *iterator;

    if (e == ((void*)0)) {
        ENGINEerr(ENGINE_F_ENGINE_LIST_REMOVE, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }

    iterator = engine_list_head;
    while (iterator && (iterator != e))
        iterator = iterator->next;
    if (iterator == ((void*)0)) {
        ENGINEerr(ENGINE_F_ENGINE_LIST_REMOVE,
                  ENGINE_R_ENGINE_IS_NOT_IN_LIST);
        return 0;
    }

    if (e->next)
        e->next->prev = e->prev;
    if (e->prev)
        e->prev->next = e->next;

    if (engine_list_head == e)
        engine_list_head = e->next;
    if (engine_list_tail == e)
        engine_list_tail = e->prev;
    engine_free_util(e, 0);
    return 1;
}
