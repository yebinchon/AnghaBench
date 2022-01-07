
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int32 ;
typedef int bits16 ;
struct TYPE_2__ {scalar_t__ typelem; char typstorage; int typmodout; int typname; int typnamespace; } ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_type ;





 int ERROR ;


 int FORMAT_TYPE_ALLOW_INVALID ;
 int FORMAT_TYPE_FORCE_QUALIFY ;
 int FORMAT_TYPE_TYPEMOD_GIVEN ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;




 scalar_t__ InvalidOid ;

 char* NameStr (int ) ;
 int ObjectIdGetDatum (scalar_t__) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;




 int TYPEOID ;
 scalar_t__ TypeIsVisible (scalar_t__) ;


 int elog (int ,char*,scalar_t__) ;
 char* get_namespace_name_or_temp (int ) ;
 char* printTypmod (char*,int ,int ) ;
 char* psprintf (char*,char*) ;
 char* pstrdup (char*) ;
 char* quote_qualified_identifier (char*,char*) ;

char *
format_type_extended(Oid type_oid, int32 typemod, bits16 flags)
{
 HeapTuple tuple;
 Form_pg_type typeform;
 Oid array_base_type;
 bool is_array;
 char *buf;
 bool with_typemod;

 if (type_oid == InvalidOid && (flags & FORMAT_TYPE_ALLOW_INVALID) != 0)
  return pstrdup("-");

 tuple = SearchSysCache1(TYPEOID, ObjectIdGetDatum(type_oid));
 if (!HeapTupleIsValid(tuple))
 {
  if ((flags & FORMAT_TYPE_ALLOW_INVALID) != 0)
   return pstrdup("???");
  else
   elog(ERROR, "cache lookup failed for type %u", type_oid);
 }
 typeform = (Form_pg_type) GETSTRUCT(tuple);
 array_base_type = typeform->typelem;

 if (array_base_type != InvalidOid && typeform->typstorage != 'p')
 {

  ReleaseSysCache(tuple);
  tuple = SearchSysCache1(TYPEOID, ObjectIdGetDatum(array_base_type));
  if (!HeapTupleIsValid(tuple))
  {
   if ((flags & FORMAT_TYPE_ALLOW_INVALID) != 0)
    return pstrdup("???[]");
   else
    elog(ERROR, "cache lookup failed for type %u", type_oid);
  }
  typeform = (Form_pg_type) GETSTRUCT(tuple);
  type_oid = array_base_type;
  is_array = 1;
 }
 else
  is_array = 0;

 with_typemod = (flags & FORMAT_TYPE_TYPEMOD_GIVEN) != 0 && (typemod >= 0);
 buf = ((void*)0);

 switch (type_oid)
 {
  case 143:
   if (with_typemod)
    buf = printTypmod("bit", typemod, typeform->typmodout);
   else if ((flags & FORMAT_TYPE_TYPEMOD_GIVEN) != 0)
   {





   }
   else
    buf = pstrdup("bit");
   break;

  case 142:
   buf = pstrdup("boolean");
   break;

  case 141:
   if (with_typemod)
    buf = printTypmod("character", typemod, typeform->typmodout);
   else if ((flags & FORMAT_TYPE_TYPEMOD_GIVEN) != 0)
   {





   }
   else
    buf = pstrdup("character");
   break;

  case 140:
   buf = pstrdup("real");
   break;

  case 139:
   buf = pstrdup("double precision");
   break;

  case 138:
   buf = pstrdup("smallint");
   break;

  case 137:
   buf = pstrdup("integer");
   break;

  case 136:
   buf = pstrdup("bigint");
   break;

  case 134:
   if (with_typemod)
    buf = printTypmod("numeric", typemod, typeform->typmodout);
   else
    buf = pstrdup("numeric");
   break;

  case 135:
   if (with_typemod)
    buf = printTypmod("interval", typemod, typeform->typmodout);
   else
    buf = pstrdup("interval");
   break;

  case 133:
   if (with_typemod)
    buf = printTypmod("time", typemod, typeform->typmodout);
   else
    buf = pstrdup("time without time zone");
   break;

  case 130:
   if (with_typemod)
    buf = printTypmod("time", typemod, typeform->typmodout);
   else
    buf = pstrdup("time with time zone");
   break;

  case 132:
   if (with_typemod)
    buf = printTypmod("timestamp", typemod, typeform->typmodout);
   else
    buf = pstrdup("timestamp without time zone");
   break;

  case 131:
   if (with_typemod)
    buf = printTypmod("timestamp", typemod, typeform->typmodout);
   else
    buf = pstrdup("timestamp with time zone");
   break;

  case 129:
   if (with_typemod)
    buf = printTypmod("bit varying", typemod, typeform->typmodout);
   else
    buf = pstrdup("bit varying");
   break;

  case 128:
   if (with_typemod)
    buf = printTypmod("character varying", typemod, typeform->typmodout);
   else
    buf = pstrdup("character varying");
   break;
 }

 if (buf == ((void*)0))
 {






  char *nspname;
  char *typname;

  if ((flags & FORMAT_TYPE_FORCE_QUALIFY) == 0 &&
   TypeIsVisible(type_oid))
   nspname = ((void*)0);
  else
   nspname = get_namespace_name_or_temp(typeform->typnamespace);

  typname = NameStr(typeform->typname);

  buf = quote_qualified_identifier(nspname, typname);

  if (with_typemod)
   buf = printTypmod(buf, typemod, typeform->typmodout);
 }

 if (is_array)
  buf = psprintf("%s[]", buf);

 ReleaseSysCache(tuple);

 return buf;
}
