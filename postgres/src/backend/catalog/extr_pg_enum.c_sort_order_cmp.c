
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ enumsortorder; } ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_enum ;


 int GETSTRUCT (int ) ;

__attribute__((used)) static int
sort_order_cmp(const void *p1, const void *p2)
{
 HeapTuple v1 = *((const HeapTuple *) p1);
 HeapTuple v2 = *((const HeapTuple *) p2);
 Form_pg_enum en1 = (Form_pg_enum) GETSTRUCT(v1);
 Form_pg_enum en2 = (Form_pg_enum) GETSTRUCT(v2);

 if (en1->enumsortorder < en2->enumsortorder)
  return -1;
 else if (en1->enumsortorder > en2->enumsortorder)
  return 1;
 else
  return 0;
}
