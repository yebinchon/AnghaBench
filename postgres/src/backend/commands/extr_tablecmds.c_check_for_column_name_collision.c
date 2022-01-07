
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int attnum; } ;
typedef int Relation ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_attribute ;


 int ATTNAME ;
 int ERRCODE_DUPLICATE_COLUMN ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int NOTICE ;
 int ObjectIdGetDatum (int ) ;
 int PointerGetDatum (char const*) ;
 int RelationGetRelationName (int ) ;
 int RelationGetRelid (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache2 (int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,...) ;

__attribute__((used)) static bool
check_for_column_name_collision(Relation rel, const char *colname,
        bool if_not_exists)
{
 HeapTuple attTuple;
 int attnum;





 attTuple = SearchSysCache2(ATTNAME,
          ObjectIdGetDatum(RelationGetRelid(rel)),
          PointerGetDatum(colname));
 if (!HeapTupleIsValid(attTuple))
  return 1;

 attnum = ((Form_pg_attribute) GETSTRUCT(attTuple))->attnum;
 ReleaseSysCache(attTuple);






 if (attnum <= 0)
  ereport(ERROR,
    (errcode(ERRCODE_DUPLICATE_COLUMN),
     errmsg("column name \"%s\" conflicts with a system column name",
      colname)));
 else
 {
  if (if_not_exists)
  {
   ereport(NOTICE,
     (errcode(ERRCODE_DUPLICATE_COLUMN),
      errmsg("column \"%s\" of relation \"%s\" already exists, skipping",
       colname, RelationGetRelationName(rel))));
   return 0;
  }

  ereport(ERROR,
    (errcode(ERRCODE_DUPLICATE_COLUMN),
     errmsg("column \"%s\" of relation \"%s\" already exists",
      colname, RelationGetRelationName(rel))));
 }

 return 1;
}
