
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tes; } ;
typedef TYPE_1__ ParallelReadyList ;


 int pg_free (int ) ;

__attribute__((used)) static void
ready_list_free(ParallelReadyList *ready_list)
{
 pg_free(ready_list->tes);
}
