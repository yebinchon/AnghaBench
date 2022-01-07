
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

__attribute__((used)) static void
ReindexPartitionedIndex(Relation parentIdx)
{
 ereport(ERROR,
   (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
    errmsg("REINDEX is not yet implemented for partitioned indexes")));
}
