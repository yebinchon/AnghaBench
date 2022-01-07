
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_5__ {scalar_t__ objectSubId; void* objectId; void* classId; } ;
typedef void* Oid ;
typedef TYPE_1__ ObjectAddress ;
typedef int Bitmapset ;
typedef scalar_t__ AttrNumber ;


 int Assert (int) ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERROR ;
 scalar_t__ FirstLowInvalidHeapAttributeNumber ;
 scalar_t__ IsCatalogRelationOid (void*) ;



 char RELKIND_TOASTVALUE ;

 void* RelationRelationId ;
 int SEPG_CLASS_DB_COLUMN ;
 int SEPG_CLASS_DB_SEQUENCE ;
 int SEPG_CLASS_DB_TABLE ;
 int SEPG_CLASS_DB_VIEW ;
 int SEPG_DB_COLUMN__INSERT ;
 int SEPG_DB_COLUMN__SELECT ;
 int SEPG_DB_COLUMN__UPDATE ;
 int SEPG_DB_SEQUENCE__GET_VALUE ;
 int SEPG_DB_TABLE__DELETE ;
 int SEPG_DB_TABLE__INSERT ;
 int SEPG_DB_TABLE__SELECT ;
 int SEPG_DB_TABLE__UPDATE ;
 int SEPG_DB_VIEW__EXPAND ;
 int bms_first_member (int *) ;
 scalar_t__ bms_is_member (int,int *) ;
 int * bms_union (int *,int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int * fixup_whole_row_references (void*,int *) ;
 char* getObjectDescription (TYPE_1__*) ;
 char* getObjectIdentity (TYPE_1__*) ;
 char get_rel_relkind (void*) ;
 int pfree (char*) ;
 int sepgsql_avc_check_perms (TYPE_1__*,int ,int,char*,int) ;
 scalar_t__ sepgsql_getenforce () ;

__attribute__((used)) static bool
check_relation_privileges(Oid relOid,
        Bitmapset *selected,
        Bitmapset *inserted,
        Bitmapset *updated,
        uint32 required,
        bool abort_on_violation)
{
 ObjectAddress object;
 char *audit_name;
 Bitmapset *columns;
 int index;
 char relkind = get_rel_relkind(relOid);
 bool result = 1;






 if (sepgsql_getenforce() > 0)
 {
  if ((required & (SEPG_DB_TABLE__UPDATE |
       SEPG_DB_TABLE__INSERT |
       SEPG_DB_TABLE__DELETE)) != 0 &&
   IsCatalogRelationOid(relOid))
   ereport(ERROR,
     (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
      errmsg("SELinux: hardwired security policy violation")));

  if (relkind == RELKIND_TOASTVALUE)
   ereport(ERROR,
     (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
      errmsg("SELinux: hardwired security policy violation")));
 }




 object.classId = RelationRelationId;
 object.objectId = relOid;
 object.objectSubId = 0;
 audit_name = getObjectIdentity(&object);
 switch (relkind)
 {
  case 130:
  case 131:
   result = sepgsql_avc_check_perms(&object,
            SEPG_CLASS_DB_TABLE,
            required,
            audit_name,
            abort_on_violation);
   break;

  case 129:
   Assert((required & ~SEPG_DB_TABLE__SELECT) == 0);

   if (required & SEPG_DB_TABLE__SELECT)
    result = sepgsql_avc_check_perms(&object,
             SEPG_CLASS_DB_SEQUENCE,
             SEPG_DB_SEQUENCE__GET_VALUE,
             audit_name,
             abort_on_violation);
   break;

  case 128:
   result = sepgsql_avc_check_perms(&object,
            SEPG_CLASS_DB_VIEW,
            SEPG_DB_VIEW__EXPAND,
            audit_name,
            abort_on_violation);
   break;

  default:

   break;
 }
 pfree(audit_name);




 if (relkind != 130 && relkind != 131)
  return 1;




 selected = fixup_whole_row_references(relOid, selected);
 inserted = fixup_whole_row_references(relOid, inserted);
 updated = fixup_whole_row_references(relOid, updated);
 columns = bms_union(selected, bms_union(inserted, updated));

 while ((index = bms_first_member(columns)) >= 0)
 {
  AttrNumber attnum;
  uint32 column_perms = 0;

  if (bms_is_member(index, selected))
   column_perms |= SEPG_DB_COLUMN__SELECT;
  if (bms_is_member(index, inserted))
  {
   if (required & SEPG_DB_TABLE__INSERT)
    column_perms |= SEPG_DB_COLUMN__INSERT;
  }
  if (bms_is_member(index, updated))
  {
   if (required & SEPG_DB_TABLE__UPDATE)
    column_perms |= SEPG_DB_COLUMN__UPDATE;
  }
  if (column_perms == 0)
   continue;


  attnum = index + FirstLowInvalidHeapAttributeNumber;

  object.classId = RelationRelationId;
  object.objectId = relOid;
  object.objectSubId = attnum;
  audit_name = getObjectDescription(&object);

  result = sepgsql_avc_check_perms(&object,
           SEPG_CLASS_DB_COLUMN,
           column_perms,
           audit_name,
           abort_on_violation);
  pfree(audit_name);

  if (!result)
   return result;
 }
 return 1;
}
