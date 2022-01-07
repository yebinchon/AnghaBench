
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Oid ;


 int AccessShareLock ;
 int CStringGetDatum (char*) ;
 int ERRCODE_DUPLICATE_OBJECT ;
 int ERROR ;
 int NAMEDATALEN ;
 int ObjectIdGetDatum (int ) ;
 int SearchSysCacheExists2 (int ,int ,int ) ;
 int TYPENAMENSP ;
 int TypeRelationId ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 int memcpy (char*,char const*,int) ;
 scalar_t__ palloc (int) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;
 int truncate_identifier (char*,int,int) ;

char *
makeArrayTypeName(const char *typeName, Oid typeNamespace)
{
 char *arr = (char *) palloc(NAMEDATALEN);
 int namelen = strlen(typeName);
 Relation pg_type_desc;
 int i;





 pg_type_desc = table_open(TypeRelationId, AccessShareLock);

 for (i = 1; i < NAMEDATALEN - 1; i++)
 {
  arr[i - 1] = '_';
  if (i + namelen < NAMEDATALEN)
   strcpy(arr + i, typeName);
  else
  {
   memcpy(arr + i, typeName, NAMEDATALEN - i);
   truncate_identifier(arr, NAMEDATALEN, 0);
  }
  if (!SearchSysCacheExists2(TYPENAMENSP,
           CStringGetDatum(arr),
           ObjectIdGetDatum(typeNamespace)))
   break;
 }

 table_close(pg_type_desc, AccessShareLock);

 if (i >= NAMEDATALEN - 1)
  ereport(ERROR,
    (errcode(ERRCODE_DUPLICATE_OBJECT),
     errmsg("could not form array type name for type \"%s\"",
      typeName)));

 return arr;
}
