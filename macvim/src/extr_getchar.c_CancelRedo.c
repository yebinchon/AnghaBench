
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * b_next; } ;
struct TYPE_6__ {TYPE_1__ bh_first; } ;


 scalar_t__ NUL ;
 int TRUE ;
 int block_redo ;
 int free_buff (TYPE_2__*) ;
 TYPE_2__ old_redobuff ;
 scalar_t__ read_readbuffers (int ) ;
 TYPE_2__ redobuff ;
 int start_stuff () ;

void
CancelRedo()
{
    if (!block_redo)
    {
 free_buff(&redobuff);
 redobuff = old_redobuff;
 old_redobuff.bh_first.b_next = ((void*)0);
 start_stuff();
 while (read_readbuffers(TRUE) != NUL)
     ;
    }
}
