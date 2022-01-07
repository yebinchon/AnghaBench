
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int32 ;
typedef int TypeName ;
struct TYPE_6__ {int const typtype; scalar_t__ domainBaseType; scalar_t__ tupDesc_identifier; int * tupDesc; } ;
typedef TYPE_1__ TypeCacheEntry ;
struct TYPE_8__ {scalar_t__ oid; int typtype; int typlen; char typstorage; int typbasetype; int typelem; int typcollation; int typbyval; int typname; int typisdefined; } ;
struct TYPE_7__ {scalar_t__ typoid; scalar_t__ ttype; int typlen; int typtype; int typisarray; scalar_t__ tupdesc_id; TYPE_1__* tcache; int * origtypname; int atttypmod; int collation; int typbyval; int typname; } ;
typedef TYPE_2__ PLpgSQL_type ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_3__* Form_pg_type ;


 int ERRCODE_UNDEFINED_OBJECT ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 int GETSTRUCT (int ) ;
 int NameStr (int ) ;
 scalar_t__ OidIsValid (int ) ;
 scalar_t__ PLPGSQL_TTYPE_PSEUDO ;
 scalar_t__ PLPGSQL_TTYPE_REC ;
 void* PLPGSQL_TTYPE_SCALAR ;
 scalar_t__ RECORDOID ;
 int TYPECACHE_DOMAIN_BASE_INFO ;
 int TYPECACHE_TUPDESC ;






 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int format_type_be (scalar_t__) ;
 int get_base_element_type (int ) ;
 TYPE_1__* lookup_type_cache (scalar_t__,int) ;
 scalar_t__ palloc (int) ;
 int pstrdup (int ) ;
 int type_is_rowtype (int ) ;

__attribute__((used)) static PLpgSQL_type *
build_datatype(HeapTuple typeTup, int32 typmod,
      Oid collation, TypeName *origtypname)
{
 Form_pg_type typeStruct = (Form_pg_type) GETSTRUCT(typeTup);
 PLpgSQL_type *typ;

 if (!typeStruct->typisdefined)
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("type \"%s\" is only a shell",
      NameStr(typeStruct->typname))));

 typ = (PLpgSQL_type *) palloc(sizeof(PLpgSQL_type));

 typ->typname = pstrdup(NameStr(typeStruct->typname));
 typ->typoid = typeStruct->oid;
 switch (typeStruct->typtype)
 {
  case 133:
  case 130:
  case 128:
   typ->ttype = PLPGSQL_TTYPE_SCALAR;
   break;
  case 132:
   typ->ttype = PLPGSQL_TTYPE_REC;
   break;
  case 131:
   if (type_is_rowtype(typeStruct->typbasetype))
    typ->ttype = PLPGSQL_TTYPE_REC;
   else
    typ->ttype = PLPGSQL_TTYPE_SCALAR;
   break;
  case 129:
   if (typ->typoid == RECORDOID)
    typ->ttype = PLPGSQL_TTYPE_REC;
   else
    typ->ttype = PLPGSQL_TTYPE_PSEUDO;
   break;
  default:
   elog(ERROR, "unrecognized typtype: %d",
     (int) typeStruct->typtype);
   break;
 }
 typ->typlen = typeStruct->typlen;
 typ->typbyval = typeStruct->typbyval;
 typ->typtype = typeStruct->typtype;
 typ->collation = typeStruct->typcollation;
 if (OidIsValid(collation) && OidIsValid(typ->collation))
  typ->collation = collation;


 if (typeStruct->typtype == 133)
 {




  typ->typisarray = (typeStruct->typlen == -1 &&
         OidIsValid(typeStruct->typelem) &&
         typeStruct->typstorage != 'p');
 }
 else if (typeStruct->typtype == 131)
 {

  typ->typisarray = (typeStruct->typlen == -1 &&
         typeStruct->typstorage != 'p' &&
         OidIsValid(get_base_element_type(typeStruct->typbasetype)));
 }
 else
  typ->typisarray = 0;
 typ->atttypmod = typmod;







 if (typ->ttype == PLPGSQL_TTYPE_REC && typ->typoid != RECORDOID)
 {
  TypeCacheEntry *typentry;

  typentry = lookup_type_cache(typ->typoid,
          TYPECACHE_TUPDESC |
          TYPECACHE_DOMAIN_BASE_INFO);
  if (typentry->typtype == 131)
   typentry = lookup_type_cache(typentry->domainBaseType,
           TYPECACHE_TUPDESC);
  if (typentry->tupDesc == ((void*)0))
   ereport(ERROR,
     (errcode(ERRCODE_WRONG_OBJECT_TYPE),
      errmsg("type %s is not composite",
       format_type_be(typ->typoid))));

  typ->origtypname = origtypname;
  typ->tcache = typentry;
  typ->tupdesc_id = typentry->tupDesc_identifier;
 }
 else
 {
  typ->origtypname = ((void*)0);
  typ->tcache = ((void*)0);
  typ->tupdesc_id = 0;
 }

 return typ;
}
