
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * cue_tail; int * cue_head; } ;
typedef TYPE_1__ vtt_t ;


 int * vtt_block_free_head (int *) ;

void vtt_cue_free_head(vtt_t* vtt)
{
    vtt->cue_head = vtt_block_free_head(vtt->cue_head);
    if (vtt->cue_head == ((void*)0)) {
        vtt->cue_tail = ((void*)0);
    }
}
