
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* md_num_open_segs; } ;
typedef TYPE_1__* SMgrRelation ;


 int MAX_FORKNUM ;

void
mdopen(SMgrRelation reln)
{

 for (int forknum = 0; forknum <= MAX_FORKNUM; forknum++)
  reln->md_num_open_segs[forknum] = 0;
}
