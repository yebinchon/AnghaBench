
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * style_tail; int * style_head; } ;
typedef TYPE_1__ vtt_t ;


 int * vtt_block_free_head (int *) ;

void vtt_style_free_head(vtt_t* vtt)
{
    vtt->style_head = vtt_block_free_head(vtt->style_head);
    if (vtt->style_head == ((void*)0)) {
        vtt->style_tail = ((void*)0);
    }
}
