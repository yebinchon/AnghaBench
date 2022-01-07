
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int const strategy; } ;
struct TYPE_8__ {int strategy; } ;
typedef int Relation ;
typedef TYPE_1__* PartitionKey ;
typedef TYPE_2__ PartitionBoundSpec ;
typedef int List ;


 int Assert (int) ;
 int ERROR ;
 int * NIL ;



 TYPE_1__* RelationGetPartitionKey (int ) ;
 int elog (int ,char*,int) ;
 int * get_qual_for_hash (int ,TYPE_2__*) ;
 int * get_qual_for_list (int ,TYPE_2__*) ;
 int * get_qual_for_range (int ,TYPE_2__*,int) ;

List *
get_qual_from_partbound(Relation rel, Relation parent,
      PartitionBoundSpec *spec)
{
 PartitionKey key = RelationGetPartitionKey(parent);
 List *my_qual = NIL;

 Assert(key != ((void*)0));

 switch (key->strategy)
 {
  case 130:
   Assert(spec->strategy == 130);
   my_qual = get_qual_for_hash(parent, spec);
   break;

  case 129:
   Assert(spec->strategy == 129);
   my_qual = get_qual_for_list(parent, spec);
   break;

  case 128:
   Assert(spec->strategy == 128);
   my_qual = get_qual_for_range(parent, spec, 0);
   break;

  default:
   elog(ERROR, "unexpected partition strategy: %d",
     (int) key->strategy);
 }

 return my_qual;
}
