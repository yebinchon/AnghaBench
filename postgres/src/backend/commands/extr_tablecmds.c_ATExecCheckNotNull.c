
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int attnotnull; } ;
typedef int Relation ;
typedef int LOCKMODE ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_attribute ;
typedef int AlteredTableInfo ;


 int ERRCODE_INVALID_TABLE_DEFINITION ;
 int ERRCODE_UNDEFINED_COLUMN ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int RelationGetRelationName (int ) ;
 int RelationGetRelid (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCacheAttName (int ,char const*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,char const*,int ) ;
 int errhint (char*) ;
 int errmsg (char*,...) ;

__attribute__((used)) static void
ATExecCheckNotNull(AlteredTableInfo *tab, Relation rel,
       const char *colName, LOCKMODE lockmode)
{
 HeapTuple tuple;

 tuple = SearchSysCacheAttName(RelationGetRelid(rel), colName);

 if (!HeapTupleIsValid(tuple))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_COLUMN),
     errmsg("column \"%s\" of relation \"%s\" does not exist",
      colName, RelationGetRelationName(rel))));

 if (!((Form_pg_attribute) GETSTRUCT(tuple))->attnotnull)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TABLE_DEFINITION),
     errmsg("constraint must be added to child tables too"),
     errdetail("Column \"%s\" of relation \"%s\" is not already NOT NULL.",
         colName, RelationGetRelationName(rel)),
     errhint("Do not specify the ONLY keyword.")));

 ReleaseSysCache(tuple);
}
