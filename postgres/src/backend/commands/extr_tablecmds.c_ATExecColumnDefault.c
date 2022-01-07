
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_5__ {scalar_t__ attgenerated; scalar_t__ attidentity; } ;
struct TYPE_4__ {int missingMode; char generated; int * raw_default; scalar_t__ attnum; } ;
typedef int Relation ;
typedef TYPE_1__ RawColumnDefault ;
typedef int ObjectAddress ;
typedef int Node ;
typedef int LOCKMODE ;
typedef scalar_t__ AttrNumber ;


 int AddRelationNewConstraints (int ,int ,int ,int,int,int,int *) ;
 int DROP_RESTRICT ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_SYNTAX_ERROR ;
 int ERRCODE_UNDEFINED_COLUMN ;
 int ERROR ;
 scalar_t__ InvalidAttrNumber ;
 int NIL ;
 int ObjectAddressSubSet (int ,int ,int ,scalar_t__) ;
 int RelationGetDescr (int ) ;
 int RelationGetRelationName (int ) ;
 int RelationGetRelid (int ) ;
 int RelationRelationId ;
 int RemoveAttrDefault (int ,scalar_t__,int ,int,int) ;
 TYPE_3__* TupleDescAttr (int ,scalar_t__) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,char const*,...) ;
 scalar_t__ get_attnum (int ,char const*) ;
 int list_make1 (TYPE_1__*) ;
 scalar_t__ palloc (int) ;

__attribute__((used)) static ObjectAddress
ATExecColumnDefault(Relation rel, const char *colName,
     Node *newDefault, LOCKMODE lockmode)
{
 TupleDesc tupdesc = RelationGetDescr(rel);
 AttrNumber attnum;
 ObjectAddress address;




 attnum = get_attnum(RelationGetRelid(rel), colName);
 if (attnum == InvalidAttrNumber)
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_COLUMN),
     errmsg("column \"%s\" of relation \"%s\" does not exist",
      colName, RelationGetRelationName(rel))));


 if (attnum <= 0)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot alter system column \"%s\"",
      colName)));

 if (TupleDescAttr(tupdesc, attnum - 1)->attidentity)
  ereport(ERROR,
    (errcode(ERRCODE_SYNTAX_ERROR),
     errmsg("column \"%s\" of relation \"%s\" is an identity column",
      colName, RelationGetRelationName(rel)),
     newDefault ? 0 : errhint("Use ALTER TABLE ... ALTER COLUMN ... DROP IDENTITY instead.")));

 if (TupleDescAttr(tupdesc, attnum - 1)->attgenerated)
  ereport(ERROR,
    (errcode(ERRCODE_SYNTAX_ERROR),
     errmsg("column \"%s\" of relation \"%s\" is a generated column",
      colName, RelationGetRelationName(rel))));
 RemoveAttrDefault(RelationGetRelid(rel), attnum, DROP_RESTRICT, 0,
       newDefault == ((void*)0) ? 0 : 1);

 if (newDefault)
 {

  RawColumnDefault *rawEnt;

  rawEnt = (RawColumnDefault *) palloc(sizeof(RawColumnDefault));
  rawEnt->attnum = attnum;
  rawEnt->raw_default = newDefault;
  rawEnt->missingMode = 0;
  rawEnt->generated = '\0';





  AddRelationNewConstraints(rel, list_make1(rawEnt), NIL,
          0, 1, 0, ((void*)0));
 }

 ObjectAddressSubSet(address, RelationRelationId,
      RelationGetRelid(rel), attnum);
 return address;
}
