
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sortstate; } ;
typedef TYPE_1__ HSpool ;


 int pfree (TYPE_1__*) ;
 int tuplesort_end (int ) ;

void
_h_spooldestroy(HSpool *hspool)
{
 tuplesort_end(hspool->sortstate);
 pfree(hspool);
}
