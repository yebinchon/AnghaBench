
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TocEntry ;
struct TYPE_3__ {size_t last_te; int sorted; int ** tes; } ;
typedef TYPE_1__ ParallelReadyList ;



__attribute__((used)) static void
ready_list_insert(ParallelReadyList *ready_list, TocEntry *te)
{
 ready_list->tes[++ready_list->last_te] = te;

 ready_list->sorted = 0;
}
