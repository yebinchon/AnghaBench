
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * cue_head; int * style_head; int * region_head; } ;
typedef TYPE_1__ vtt_t ;


 int free (TYPE_1__*) ;
 void* vtt_block_free_head (int *) ;

void vtt_free(vtt_t* vtt)
{
    while (vtt->region_head != ((void*)0)) {
        vtt->region_head = vtt_block_free_head(vtt->region_head);
    }
    while (vtt->style_head != ((void*)0)) {
        vtt->style_head = vtt_block_free_head(vtt->style_head);
    }
    while (vtt->cue_head != ((void*)0)) {
        vtt->cue_head = vtt_block_free_head(vtt->cue_head);
    }
    free(vtt);
}
