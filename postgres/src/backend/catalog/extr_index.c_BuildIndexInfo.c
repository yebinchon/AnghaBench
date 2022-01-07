
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int * values; } ;
struct TYPE_17__ {int indnatts; scalar_t__ indisexclusion; TYPE_2__ indkey; int indisready; int indisunique; int indnkeyatts; } ;
struct TYPE_16__ {int ii_ExclusionStrats; int ii_ExclusionProcs; int ii_ExclusionOps; int * ii_IndexAttrNumbers; } ;
struct TYPE_15__ {TYPE_1__* rd_rel; TYPE_5__* rd_index; } ;
struct TYPE_13__ {int relam; } ;
typedef TYPE_3__* Relation ;
typedef TYPE_4__ IndexInfo ;
typedef TYPE_5__* Form_pg_index ;


 int ERROR ;
 int INDEX_MAX_KEYS ;
 int RelationGetExclusionInfo (TYPE_3__*,int *,int *,int *) ;
 int RelationGetIndexExpressions (TYPE_3__*) ;
 int RelationGetIndexPredicate (TYPE_3__*) ;
 int RelationGetRelid (TYPE_3__*) ;
 int elog (int ,char*,int,int ) ;
 TYPE_4__* makeIndexInfo (int,int ,int ,int ,int ,int ,int ,int) ;

IndexInfo *
BuildIndexInfo(Relation index)
{
 IndexInfo *ii;
 Form_pg_index indexStruct = index->rd_index;
 int i;
 int numAtts;


 numAtts = indexStruct->indnatts;
 if (numAtts < 1 || numAtts > INDEX_MAX_KEYS)
  elog(ERROR, "invalid indnatts %d for index %u",
    numAtts, RelationGetRelid(index));





 ii = makeIndexInfo(indexStruct->indnatts,
        indexStruct->indnkeyatts,
        index->rd_rel->relam,
        RelationGetIndexExpressions(index),
        RelationGetIndexPredicate(index),
        indexStruct->indisunique,
        indexStruct->indisready,
        0);


 for (i = 0; i < numAtts; i++)
  ii->ii_IndexAttrNumbers[i] = indexStruct->indkey.values[i];


 if (indexStruct->indisexclusion)
 {
  RelationGetExclusionInfo(index,
         &ii->ii_ExclusionOps,
         &ii->ii_ExclusionProcs,
         &ii->ii_ExclusionStrats);
 }

 return ii;
}
