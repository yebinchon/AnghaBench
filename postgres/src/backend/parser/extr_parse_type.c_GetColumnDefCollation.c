
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int location; int collOid; TYPE_1__* collClause; } ;
struct TYPE_4__ {int location; int collname; } ;
typedef int ParseState ;
typedef int Oid ;
typedef TYPE_2__ ColumnDef ;


 int ERRCODE_DATATYPE_MISMATCH ;
 int ERROR ;
 int LookupCollation (int *,int ,int) ;
 scalar_t__ OidIsValid (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int format_type_be (int ) ;
 int get_typcollation (int ) ;
 int parser_errposition (int *,int) ;

Oid
GetColumnDefCollation(ParseState *pstate, ColumnDef *coldef, Oid typeOid)
{
 Oid result;
 Oid typcollation = get_typcollation(typeOid);
 int location = coldef->location;

 if (coldef->collClause)
 {

  location = coldef->collClause->location;
  result = LookupCollation(pstate, coldef->collClause->collname,
         location);
 }
 else if (OidIsValid(coldef->collOid))
 {

  result = coldef->collOid;
 }
 else
 {

  result = typcollation;
 }


 if (OidIsValid(result) && !OidIsValid(typcollation))
  ereport(ERROR,
    (errcode(ERRCODE_DATATYPE_MISMATCH),
     errmsg("collations are not supported by type %s",
      format_type_be(typeOid)),
     parser_errposition(pstate, location)));

 return result;
}
