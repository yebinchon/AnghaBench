
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* cue_settings; struct TYPE_5__* cue_id; struct TYPE_5__* next; } ;
typedef TYPE_1__ vtt_block_t ;


 int free (TYPE_1__*) ;

vtt_block_t* vtt_block_free_head(vtt_block_t* head)
{
    vtt_block_t* next = head->next;
    if (head->cue_id != ((void*)0)) {
        free(head->cue_id);
    }
    if (head->cue_settings != ((void*)0)) {
        free(head->cue_settings);
    }
    free(head);
    return next;
}
