
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int * restart_save_cb ;
struct TYPE_4__ {int scb; int ccb; void* data; int tag; struct TYPE_4__* next; } ;
typedef TYPE_1__ restart_data_cb ;
typedef int * restart_check_cb ;


 int RESTART_TAG_MAXLEN ;
 TYPE_1__* calloc (int,int) ;
 TYPE_1__* cb_stack ;
 int safe_strcpy (int ,char const*,int ) ;

void restart_register(const char *tag, restart_check_cb ccb, restart_save_cb scb, void *data) {
    restart_data_cb *cb = calloc(1, sizeof(restart_data_cb));



    if (cb_stack == ((void*)0)) {
        cb_stack = cb;
    } else {


        restart_data_cb *finder = cb_stack;
        while (finder->next != ((void*)0)) {
            finder = finder->next;
        }
        finder->next = cb;
    }

    safe_strcpy(cb->tag, tag, RESTART_TAG_MAXLEN);
    cb->data = data;
    cb->ccb = *ccb;
    cb->scb = *scb;
}
