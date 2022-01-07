
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TuplesortInstrumentation ;
struct TYPE_5__ {int num_workers; } ;
struct TYPE_4__ {TYPE_2__* shared_info; } ;
typedef TYPE_1__ SortState ;
typedef scalar_t__ Size ;


 int SharedSortInfo ;
 int memcpy (int,TYPE_2__*,scalar_t__) ;
 scalar_t__ offsetof (int,int ) ;
 int palloc (scalar_t__) ;
 int si ;
 int sinstrument ;

void
ExecSortRetrieveInstrumentation(SortState *node)
{
 Size size;
 SharedSortInfo *si;

 if (node->shared_info == ((void*)0))
  return;

 size = offsetof(SharedSortInfo, sinstrument)
  + node->shared_info->num_workers * sizeof(TuplesortInstrumentation);
 si = palloc(size);
 memcpy(si, node->shared_info, size);
 node->shared_info = si;
}
