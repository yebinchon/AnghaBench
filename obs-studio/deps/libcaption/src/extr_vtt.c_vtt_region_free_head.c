
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * region_tail; int * region_head; } ;
typedef TYPE_1__ vtt_t ;


 int * vtt_block_free_head (int *) ;

void vtt_region_free_head(vtt_t* vtt)
{
    vtt->region_head = vtt_block_free_head(vtt->region_head);
    if (vtt->region_head == ((void*)0)) {
        vtt->region_tail = ((void*)0);
    }
}
