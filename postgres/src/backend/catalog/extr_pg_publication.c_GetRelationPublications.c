
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int n_members; TYPE_1__** members; } ;
struct TYPE_7__ {int prpubid; } ;
struct TYPE_6__ {int tuple; } ;
typedef int Oid ;
typedef int List ;
typedef int * HeapTuple ;
typedef TYPE_2__* Form_pg_publication_rel ;
typedef TYPE_3__ CatCList ;


 scalar_t__ GETSTRUCT (int *) ;
 int * NIL ;
 int ObjectIdGetDatum (int ) ;
 int PUBLICATIONRELMAP ;
 int ReleaseSysCacheList (TYPE_3__*) ;
 TYPE_3__* SearchSysCacheList1 (int ,int ) ;
 int * lappend_oid (int *,int ) ;

List *
GetRelationPublications(Oid relid)
{
 List *result = NIL;
 CatCList *pubrellist;
 int i;


 pubrellist = SearchSysCacheList1(PUBLICATIONRELMAP,
          ObjectIdGetDatum(relid));
 for (i = 0; i < pubrellist->n_members; i++)
 {
  HeapTuple tup = &pubrellist->members[i]->tuple;
  Oid pubid = ((Form_pg_publication_rel) GETSTRUCT(tup))->prpubid;

  result = lappend_oid(result, pubid);
 }

 ReleaseSysCacheList(pubrellist);

 return result;
}
