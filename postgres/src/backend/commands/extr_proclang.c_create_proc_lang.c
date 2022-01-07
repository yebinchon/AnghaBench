
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int values ;
typedef int replaces ;
typedef int nulls ;
typedef int TupleDesc ;
struct TYPE_19__ {void* oid; } ;
struct TYPE_18__ {int t_self; } ;
struct TYPE_17__ {void* objectId; scalar_t__ objectSubId; void* classId; } ;
typedef int Relation ;
typedef void* Oid ;
typedef TYPE_1__ ObjectAddress ;
typedef int NameData ;
typedef TYPE_2__* HeapTuple ;
typedef TYPE_3__* Form_pg_language ;
typedef int Datum ;


 int ACLCHECK_NOT_OWNER ;
 int Anum_pg_language_lanacl ;
 int Anum_pg_language_laninline ;
 int Anum_pg_language_lanispl ;
 int Anum_pg_language_lanname ;
 int Anum_pg_language_lanowner ;
 int Anum_pg_language_lanplcallfoid ;
 int Anum_pg_language_lanpltrusted ;
 int Anum_pg_language_lanvalidator ;
 int Anum_pg_language_oid ;
 int BoolGetDatum (int) ;
 int CatalogTupleInsert (int ,TYPE_2__*) ;
 int CatalogTupleUpdate (int ,int *,TYPE_2__*) ;
 int DEPENDENCY_NORMAL ;
 int ERRCODE_DUPLICATE_OBJECT ;
 int ERROR ;
 int GETSTRUCT (TYPE_2__*) ;
 void* GetNewOidWithIndex (int ,int ,int) ;
 scalar_t__ HeapTupleIsValid (TYPE_2__*) ;
 int InvokeObjectPostCreateHook (void*,void*,int ) ;
 int LANGNAME ;
 int LanguageOidIndexId ;
 void* LanguageRelationId ;
 int NameGetDatum (int *) ;
 int Natts_pg_language ;
 int OBJECT_LANGUAGE ;
 int ObjectIdGetDatum (void*) ;
 scalar_t__ OidIsValid (void*) ;
 int PointerGetDatum (char const*) ;
 void* ProcedureRelationId ;
 int RelationGetDescr (int ) ;
 int ReleaseSysCache (TYPE_2__*) ;
 int RowExclusiveLock ;
 TYPE_2__* SearchSysCache1 (int ,int ) ;
 int aclcheck_error (int ,int ,char const*) ;
 int deleteDependencyRecordsFor (void*,void*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 TYPE_2__* heap_form_tuple (int ,int*,int*) ;
 TYPE_2__* heap_modify_tuple (TYPE_2__*,int ,int*,int*,int*) ;
 int memset (int*,int,int) ;
 int namestrcpy (int *,char const*) ;
 int pg_language_ownercheck (void*,void*) ;
 int recordDependencyOn (TYPE_1__*,TYPE_1__*,int ) ;
 int recordDependencyOnCurrentExtension (TYPE_1__*,int) ;
 int recordDependencyOnOwner (void*,void*,void*) ;
 int table_close (int ,int ) ;
 int table_open (void*,int ) ;

__attribute__((used)) static ObjectAddress
create_proc_lang(const char *languageName, bool replace,
     Oid languageOwner, Oid handlerOid, Oid inlineOid,
     Oid valOid, bool trusted)
{
 Relation rel;
 TupleDesc tupDesc;
 Datum values[Natts_pg_language];
 bool nulls[Natts_pg_language];
 bool replaces[Natts_pg_language];
 NameData langname;
 HeapTuple oldtup;
 HeapTuple tup;
 Oid langoid;
 bool is_update;
 ObjectAddress myself,
    referenced;

 rel = table_open(LanguageRelationId, RowExclusiveLock);
 tupDesc = RelationGetDescr(rel);


 memset(values, 0, sizeof(values));
 memset(nulls, 0, sizeof(nulls));
 memset(replaces, 1, sizeof(replaces));

 namestrcpy(&langname, languageName);
 values[Anum_pg_language_lanname - 1] = NameGetDatum(&langname);
 values[Anum_pg_language_lanowner - 1] = ObjectIdGetDatum(languageOwner);
 values[Anum_pg_language_lanispl - 1] = BoolGetDatum(1);
 values[Anum_pg_language_lanpltrusted - 1] = BoolGetDatum(trusted);
 values[Anum_pg_language_lanplcallfoid - 1] = ObjectIdGetDatum(handlerOid);
 values[Anum_pg_language_laninline - 1] = ObjectIdGetDatum(inlineOid);
 values[Anum_pg_language_lanvalidator - 1] = ObjectIdGetDatum(valOid);
 nulls[Anum_pg_language_lanacl - 1] = 1;


 oldtup = SearchSysCache1(LANGNAME, PointerGetDatum(languageName));

 if (HeapTupleIsValid(oldtup))
 {
  Form_pg_language oldform = (Form_pg_language) GETSTRUCT(oldtup);


  if (!replace)
   ereport(ERROR,
     (errcode(ERRCODE_DUPLICATE_OBJECT),
      errmsg("language \"%s\" already exists", languageName)));
  if (!pg_language_ownercheck(oldform->oid, languageOwner))
   aclcheck_error(ACLCHECK_NOT_OWNER, OBJECT_LANGUAGE,
         languageName);





  replaces[Anum_pg_language_oid - 1] = 0;
  replaces[Anum_pg_language_lanowner - 1] = 0;
  replaces[Anum_pg_language_lanacl - 1] = 0;


  tup = heap_modify_tuple(oldtup, tupDesc, values, nulls, replaces);
  CatalogTupleUpdate(rel, &tup->t_self, tup);

  langoid = oldform->oid;
  ReleaseSysCache(oldtup);
  is_update = 1;
 }
 else
 {

  langoid = GetNewOidWithIndex(rel, LanguageOidIndexId,
          Anum_pg_language_oid);
  values[Anum_pg_language_oid - 1] = ObjectIdGetDatum(langoid);
  tup = heap_form_tuple(tupDesc, values, nulls);
  CatalogTupleInsert(rel, tup);
  is_update = 0;
 }







 myself.classId = LanguageRelationId;
 myself.objectId = langoid;
 myself.objectSubId = 0;

 if (is_update)
  deleteDependencyRecordsFor(myself.classId, myself.objectId, 1);


 if (!is_update)
  recordDependencyOnOwner(myself.classId, myself.objectId,
        languageOwner);


 recordDependencyOnCurrentExtension(&myself, is_update);


 referenced.classId = ProcedureRelationId;
 referenced.objectId = handlerOid;
 referenced.objectSubId = 0;
 recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);


 if (OidIsValid(inlineOid))
 {
  referenced.classId = ProcedureRelationId;
  referenced.objectId = inlineOid;
  referenced.objectSubId = 0;
  recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);
 }


 if (OidIsValid(valOid))
 {
  referenced.classId = ProcedureRelationId;
  referenced.objectId = valOid;
  referenced.objectSubId = 0;
  recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);
 }


 InvokeObjectPostCreateHook(LanguageRelationId, myself.objectId, 0);

 table_close(rel, RowExclusiveLock);

 return myself;
}
