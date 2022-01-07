
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* arg; struct TYPE_4__* next; int (* handfn ) (void*) ;} ;
typedef TYPE_1__ THREAD_EVENT_HANDLER ;


 int OPENSSL_free (TYPE_1__*) ;
 int stub1 (void*) ;

__attribute__((used)) static void init_thread_stop(void *arg, THREAD_EVENT_HANDLER **hands)
{
    THREAD_EVENT_HANDLER *curr, *prev = ((void*)0);


    if (hands == ((void*)0))
        return;

    curr = *hands;
    while (curr != ((void*)0)) {
        if (arg != ((void*)0) && curr->arg != arg) {
            curr = curr->next;
            continue;
        }
        curr->handfn(curr->arg);
        prev = curr;
        curr = curr->next;
        if (prev == *hands)
            *hands = curr;
        OPENSSL_free(prev);
    }
}
