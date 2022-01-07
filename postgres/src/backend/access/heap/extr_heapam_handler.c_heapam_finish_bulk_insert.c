
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;


 int HEAP_INSERT_SKIP_WAL ;
 int heap_sync (int ) ;

__attribute__((used)) static void
heapam_finish_bulk_insert(Relation relation, int options)
{




 if (options & HEAP_INSERT_SKIP_WAL)
  heap_sync(relation);
}
