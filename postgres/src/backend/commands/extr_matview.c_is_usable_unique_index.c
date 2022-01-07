
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int* values; } ;
struct TYPE_10__ {int indnatts; TYPE_2__ indkey; scalar_t__ indisvalid; scalar_t__ indimmediate; scalar_t__ indisunique; } ;
struct TYPE_9__ {TYPE_1__* rd_rel; TYPE_4__* rd_index; } ;
struct TYPE_7__ {scalar_t__ relam; } ;
typedef TYPE_3__* Relation ;
typedef TYPE_4__* Form_pg_index ;


 scalar_t__ BTREE_AM_OID ;
 scalar_t__ NIL ;
 scalar_t__ RelationGetIndexPredicate (TYPE_3__*) ;

__attribute__((used)) static bool
is_usable_unique_index(Relation indexRel)
{
 Form_pg_index indexStruct = indexRel->rd_index;
 if (indexStruct->indisunique &&
  indexStruct->indimmediate &&
  indexRel->rd_rel->relam == BTREE_AM_OID &&
  indexStruct->indisvalid &&
  RelationGetIndexPredicate(indexRel) == NIL &&
  indexStruct->indnatts > 0)
 {







  int numatts = indexStruct->indnatts;
  int i;

  for (i = 0; i < numatts; i++)
  {
   int attnum = indexStruct->indkey.values[i];

   if (attnum <= 0)
    return 0;
  }
  return 1;
 }
 return 0;
}
