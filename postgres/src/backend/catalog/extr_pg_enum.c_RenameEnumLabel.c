
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int n_members; TYPE_1__** members; } ;
struct TYPE_14__ {int enumlabel; } ;
struct TYPE_13__ {int t_self; } ;
struct TYPE_12__ {TYPE_2__ tuple; } ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_2__* HeapTuple ;
typedef TYPE_3__* Form_pg_enum ;
typedef TYPE_4__ CatCList ;


 int CatalogTupleUpdate (int ,int *,TYPE_2__*) ;
 int ENUMTYPOIDNAME ;
 int ERRCODE_DUPLICATE_OBJECT ;
 int ERRCODE_INVALID_NAME ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int EnumRelationId ;
 int ExclusiveLock ;
 scalar_t__ GETSTRUCT (TYPE_2__*) ;
 int LockDatabaseObject (int ,int ,int ,int ) ;
 int NAMEDATALEN ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseCatCacheList (TYPE_4__*) ;
 int RowExclusiveLock ;
 TYPE_4__* SearchSysCacheList1 (int ,int ) ;
 int TypeRelationId ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,int) ;
 int errmsg (char*,char const*) ;
 TYPE_2__* heap_copytuple (TYPE_2__*) ;
 int heap_freetuple (TYPE_2__*) ;
 int namestrcpy (int *,char const*) ;
 scalar_t__ strcmp (int ,char const*) ;
 int strlen (char const*) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
RenameEnumLabel(Oid enumTypeOid,
    const char *oldVal,
    const char *newVal)
{
 Relation pg_enum;
 HeapTuple enum_tup;
 Form_pg_enum en;
 CatCList *list;
 int nelems;
 HeapTuple old_tup;
 bool found_new;
 int i;


 if (strlen(newVal) > (NAMEDATALEN - 1))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_NAME),
     errmsg("invalid enum label \"%s\"", newVal),
     errdetail("Labels must be %d characters or less.",
         NAMEDATALEN - 1)));
 LockDatabaseObject(TypeRelationId, enumTypeOid, 0, ExclusiveLock);

 pg_enum = table_open(EnumRelationId, RowExclusiveLock);


 list = SearchSysCacheList1(ENUMTYPOIDNAME,
          ObjectIdGetDatum(enumTypeOid));
 nelems = list->n_members;






 old_tup = ((void*)0);
 found_new = 0;
 for (i = 0; i < nelems; i++)
 {
  enum_tup = &(list->members[i]->tuple);
  en = (Form_pg_enum) GETSTRUCT(enum_tup);
  if (strcmp(NameStr(en->enumlabel), oldVal) == 0)
   old_tup = enum_tup;
  if (strcmp(NameStr(en->enumlabel), newVal) == 0)
   found_new = 1;
 }
 if (!old_tup)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("\"%s\" is not an existing enum label",
      oldVal)));
 if (found_new)
  ereport(ERROR,
    (errcode(ERRCODE_DUPLICATE_OBJECT),
     errmsg("enum label \"%s\" already exists",
      newVal)));


 enum_tup = heap_copytuple(old_tup);
 en = (Form_pg_enum) GETSTRUCT(enum_tup);

 ReleaseCatCacheList(list);


 namestrcpy(&en->enumlabel, newVal);
 CatalogTupleUpdate(pg_enum, &enum_tup->t_self, enum_tup);
 heap_freetuple(enum_tup);

 table_close(pg_enum, RowExclusiveLock);
}
