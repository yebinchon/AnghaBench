
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; int struct_ref; struct TYPE_6__* prev; int id; } ;
typedef TYPE_1__ ENGINE ;


 int ENGINE_F_ENGINE_LIST_ADD ;
 int ENGINE_R_CONFLICTING_ENGINE_ID ;
 int ENGINE_R_INTERNAL_LIST_ERROR ;
 int ENGINEerr (int ,int ) ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 int engine_cleanup_add_last (int ) ;
 int engine_list_cleanup ;
 TYPE_1__* engine_list_head ;
 TYPE_1__* engine_list_tail ;
 int engine_ref_debug (TYPE_1__*,int ,int) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int engine_list_add(ENGINE *e)
{
    int conflict = 0;
    ENGINE *iterator = ((void*)0);

    if (e == ((void*)0)) {
        ENGINEerr(ENGINE_F_ENGINE_LIST_ADD, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }
    iterator = engine_list_head;
    while (iterator && !conflict) {
        conflict = (strcmp(iterator->id, e->id) == 0);
        iterator = iterator->next;
    }
    if (conflict) {
        ENGINEerr(ENGINE_F_ENGINE_LIST_ADD, ENGINE_R_CONFLICTING_ENGINE_ID);
        return 0;
    }
    if (engine_list_head == ((void*)0)) {

        if (engine_list_tail) {
            ENGINEerr(ENGINE_F_ENGINE_LIST_ADD, ENGINE_R_INTERNAL_LIST_ERROR);
            return 0;
        }
        engine_list_head = e;
        e->prev = ((void*)0);



        engine_cleanup_add_last(engine_list_cleanup);
    } else {

        if ((engine_list_tail == ((void*)0)) || (engine_list_tail->next != ((void*)0))) {
            ENGINEerr(ENGINE_F_ENGINE_LIST_ADD, ENGINE_R_INTERNAL_LIST_ERROR);
            return 0;
        }
        engine_list_tail->next = e;
        e->prev = engine_list_tail;
    }



    e->struct_ref++;
    engine_ref_debug(e, 0, 1);

    engine_list_tail = e;
    e->next = ((void*)0);
    return 1;
}
