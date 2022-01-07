
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sortstate; } ;
typedef TYPE_1__ BTSpool ;


 int pfree (TYPE_1__*) ;
 int tuplesort_end (int ) ;

__attribute__((used)) static void
_bt_spooldestroy(BTSpool *btspool)
{
 tuplesort_end(btspool->sortstate);
 pfree(btspool);
}
