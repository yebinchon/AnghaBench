
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ relkind; } ;
typedef int Relation ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 scalar_t__ IsCatalogRelation (int ) ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 scalar_t__ RELKIND_RELATION ;
 TYPE_1__* RelationGetForm (int ) ;
 int RelationGetRelationName (int ) ;
 int RelationNeedsWAL (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errhint (char*) ;
 int errmsg (char*,int ) ;

__attribute__((used)) static void
check_publication_add_relation(Relation targetrel)
{

 if (RelationGetForm(targetrel)->relkind == RELKIND_PARTITIONED_TABLE)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("\"%s\" is a partitioned table",
      RelationGetRelationName(targetrel)),
     errdetail("Adding partitioned tables to publications is not supported."),
     errhint("You can add the table partitions individually.")));


 if (RelationGetForm(targetrel)->relkind != RELKIND_RELATION)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("\"%s\" is not a table",
      RelationGetRelationName(targetrel)),
     errdetail("Only tables can be added to publications.")));


 if (IsCatalogRelation(targetrel))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("\"%s\" is a system table",
      RelationGetRelationName(targetrel)),
     errdetail("System tables cannot be added to publications.")));


 if (!RelationNeedsWAL(targetrel))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("table \"%s\" cannot be replicated",
      RelationGetRelationName(targetrel)),
     errdetail("Temporary and unlogged relations cannot be replicated.")));
}
