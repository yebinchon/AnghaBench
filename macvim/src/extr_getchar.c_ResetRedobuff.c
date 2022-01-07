
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * b_next; } ;
struct TYPE_6__ {TYPE_1__ bh_first; } ;


 int block_redo ;
 int free_buff (TYPE_2__*) ;
 TYPE_2__ old_redobuff ;
 TYPE_2__ redobuff ;

void
ResetRedobuff()
{
    if (!block_redo)
    {
 free_buff(&old_redobuff);
 old_redobuff = redobuff;
 redobuff.bh_first.b_next = ((void*)0);
    }
}
