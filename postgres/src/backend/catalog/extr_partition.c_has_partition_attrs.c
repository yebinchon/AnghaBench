
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* rd_rel; } ;
struct TYPE_5__ {scalar_t__ relkind; } ;
typedef TYPE_2__* Relation ;
typedef int PartitionKey ;
typedef int Node ;
typedef int ListCell ;
typedef int List ;
typedef int Bitmapset ;
typedef scalar_t__ AttrNumber ;


 scalar_t__ FirstLowInvalidHeapAttributeNumber ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 int RelationGetPartitionKey (TYPE_2__*) ;
 scalar_t__ bms_is_member (scalar_t__,int *) ;
 scalar_t__ bms_overlap (int *,int *) ;
 scalar_t__ get_partition_col_attnum (int ,int) ;
 int * get_partition_exprs (int ) ;
 int get_partition_natts (int ) ;
 scalar_t__ lfirst (int *) ;
 int * list_head (int *) ;
 int * lnext (int *,int *) ;
 int pull_varattnos (int *,int,int **) ;

bool
has_partition_attrs(Relation rel, Bitmapset *attnums, bool *used_in_expr)
{
 PartitionKey key;
 int partnatts;
 List *partexprs;
 ListCell *partexprs_item;
 int i;

 if (attnums == ((void*)0) || rel->rd_rel->relkind != RELKIND_PARTITIONED_TABLE)
  return 0;

 key = RelationGetPartitionKey(rel);
 partnatts = get_partition_natts(key);
 partexprs = get_partition_exprs(key);

 partexprs_item = list_head(partexprs);
 for (i = 0; i < partnatts; i++)
 {
  AttrNumber partattno = get_partition_col_attnum(key, i);

  if (partattno != 0)
  {
   if (bms_is_member(partattno - FirstLowInvalidHeapAttributeNumber,
         attnums))
   {
    if (used_in_expr)
     *used_in_expr = 0;
    return 1;
   }
  }
  else
  {

   Node *expr = (Node *) lfirst(partexprs_item);
   Bitmapset *expr_attrs = ((void*)0);


   pull_varattnos(expr, 1, &expr_attrs);
   partexprs_item = lnext(partexprs, partexprs_item);

   if (bms_overlap(attnums, expr_attrs))
   {
    if (used_in_expr)
     *used_in_expr = 1;
    return 1;
   }
  }
 }

 return 0;
}
