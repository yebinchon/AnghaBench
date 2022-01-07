
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int nparts; int boundinfo; } ;
struct TYPE_13__ {TYPE_1__* glob; } ;
struct TYPE_12__ {int nparts; int boundinfo; int * part_scheme; } ;
struct TYPE_11__ {int * partition_directory; } ;
typedef int Relation ;
typedef TYPE_2__ RelOptInfo ;
typedef TYPE_3__ PlannerInfo ;
typedef TYPE_4__* PartitionDesc ;


 int Assert (int) ;
 int * CreatePartitionDirectory (int ) ;
 int CurrentMemoryContext ;
 TYPE_4__* PartitionDirectoryLookup (int *,int ) ;
 int * find_partition_scheme (TYPE_3__*,int ) ;
 int set_baserel_partition_constraint (int ,TYPE_2__*) ;
 int set_baserel_partition_key_exprs (int ,TYPE_2__*) ;

__attribute__((used)) static void
set_relation_partition_info(PlannerInfo *root, RelOptInfo *rel,
       Relation relation)
{
 PartitionDesc partdesc;


 if (root->glob->partition_directory == ((void*)0))
  root->glob->partition_directory =
   CreatePartitionDirectory(CurrentMemoryContext);

 partdesc = PartitionDirectoryLookup(root->glob->partition_directory,
          relation);
 rel->part_scheme = find_partition_scheme(root, relation);
 Assert(partdesc != ((void*)0) && rel->part_scheme != ((void*)0));
 rel->boundinfo = partdesc->boundinfo;
 rel->nparts = partdesc->nparts;
 set_baserel_partition_key_exprs(relation, rel);
 set_baserel_partition_constraint(relation, rel);
}
