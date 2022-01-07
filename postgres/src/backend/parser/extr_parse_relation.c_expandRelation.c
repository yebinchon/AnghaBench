
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int natts; } ;
struct TYPE_5__ {TYPE_4__* rd_att; } ;
typedef TYPE_1__* Relation ;
typedef int Oid ;
typedef int List ;
typedef int Alias ;


 int AccessShareLock ;
 int expandTupleDesc (TYPE_4__*,int *,int ,int ,int,int,int,int,int **,int **) ;
 int relation_close (TYPE_1__*,int ) ;
 TYPE_1__* relation_open (int ,int ) ;

__attribute__((used)) static void
expandRelation(Oid relid, Alias *eref, int rtindex, int sublevels_up,
      int location, bool include_dropped,
      List **colnames, List **colvars)
{
 Relation rel;


 rel = relation_open(relid, AccessShareLock);
 expandTupleDesc(rel->rd_att, eref, rel->rd_att->natts, 0,
     rtindex, sublevels_up,
     location, include_dropped,
     colnames, colvars);
 relation_close(rel, AccessShareLock);
}
