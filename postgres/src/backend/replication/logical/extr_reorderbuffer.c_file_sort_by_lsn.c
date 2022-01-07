
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ lsn; } ;
typedef TYPE_1__ RewriteMappingFile ;
typedef int ListCell ;


 scalar_t__ lfirst (int const*) ;

__attribute__((used)) static int
file_sort_by_lsn(const ListCell *a_p, const ListCell *b_p)
{
 RewriteMappingFile *a = (RewriteMappingFile *) lfirst(a_p);
 RewriteMappingFile *b = (RewriteMappingFile *) lfirst(b_p);

 if (a->lsn < b->lsn)
  return -1;
 else if (a->lsn > b->lsn)
  return 1;
 return 0;
}
