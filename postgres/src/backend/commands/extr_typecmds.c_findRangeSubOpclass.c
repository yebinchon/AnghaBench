
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int List ;


 int BTREE_AM_OID ;
 int ERRCODE_DATATYPE_MISMATCH ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int GetDefaultOpClass (int ,int ) ;
 int IsBinaryCoercible (int ,int ) ;
 int * NIL ;
 char* NameListToString (int *) ;
 int OidIsValid (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,char*,char*) ;
 char* format_type_be (int ) ;
 int get_opclass_input_type (int ) ;
 int get_opclass_oid (int ,int *,int) ;

__attribute__((used)) static Oid
findRangeSubOpclass(List *opcname, Oid subtype)
{
 Oid opcid;
 Oid opInputType;

 if (opcname != NIL)
 {
  opcid = get_opclass_oid(BTREE_AM_OID, opcname, 0);





  opInputType = get_opclass_input_type(opcid);
  if (!IsBinaryCoercible(subtype, opInputType))
   ereport(ERROR,
     (errcode(ERRCODE_DATATYPE_MISMATCH),
      errmsg("operator class \"%s\" does not accept data type %s",
       NameListToString(opcname),
       format_type_be(subtype))));
 }
 else
 {
  opcid = GetDefaultOpClass(subtype, BTREE_AM_OID);
  if (!OidIsValid(opcid))
  {

   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_OBJECT),
      errmsg("data type %s has no default operator class for access method \"%s\"",
       format_type_be(subtype), "btree"),
      errhint("You must specify an operator class for the range type or define a default operator class for the subtype.")));
  }
 }

 return opcid;
}
