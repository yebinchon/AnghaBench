
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int objectId; int objectSubId; } ;
typedef TYPE_1__ ObjectAddress ;


 int Assert (int) ;
 int DeleteSequenceTuple (int ) ;
 int DropCastById (int ) ;
 int DropProceduralLanguageById (int ) ;
 int DropTransformById (int ) ;
 int ERROR ;
 int LargeObjectDrop (int ) ;
 int PERFORM_DELETION_CONCURRENTLY ;
 int PERFORM_DELETION_CONCURRENT_LOCK ;
 char RELKIND_INDEX ;
 char RELKIND_PARTITIONED_INDEX ;
 char RELKIND_SEQUENCE ;
 int RemoveAccessMethodById (int ) ;
 int RemoveAmOpEntryById (int ) ;
 int RemoveAmProcEntryById (int ) ;
 int RemoveAttrDefaultById (int ) ;
 int RemoveAttributeById (int ,int ) ;
 int RemoveCollationById (int ) ;
 int RemoveConstraintById (int ) ;
 int RemoveConversionById (int ) ;
 int RemoveDefaultACLById (int ) ;
 int RemoveEventTriggerById (int ) ;
 int RemoveExtensionById (int ) ;
 int RemoveForeignDataWrapperById (int ) ;
 int RemoveForeignServerById (int ) ;
 int RemoveFunctionById (int ) ;
 int RemoveOpClassById (int ) ;
 int RemoveOpFamilyById (int ) ;
 int RemoveOperatorById (int ) ;
 int RemovePolicyById (int ) ;
 int RemovePublicationById (int ) ;
 int RemovePublicationRelById (int ) ;
 int RemoveRewriteRuleById (int ) ;
 int RemoveSchemaById (int ) ;
 int RemoveStatisticsById (int ) ;
 int RemoveTSConfigurationById (int ) ;
 int RemoveTSDictionaryById (int ) ;
 int RemoveTSParserById (int ) ;
 int RemoveTSTemplateById (int ) ;
 int RemoveTriggerById (int ) ;
 int RemoveTypeById (int ) ;
 int RemoveUserMappingById (int ) ;
 int elog (int ,char*) ;
 int getObjectClass (TYPE_1__ const*) ;
 char get_rel_relkind (int ) ;
 int heap_drop_with_catalog (int ) ;
 int index_drop (int ,int,int) ;

__attribute__((used)) static void
doDeletion(const ObjectAddress *object, int flags)
{
 switch (getObjectClass(object))
 {
  case 161:
   {
    char relKind = get_rel_relkind(object->objectId);

    if (relKind == RELKIND_INDEX ||
     relKind == RELKIND_PARTITIONED_INDEX)
    {
     bool concurrent = ((flags & PERFORM_DELETION_CONCURRENTLY) != 0);
     bool concurrent_lock_mode = ((flags & PERFORM_DELETION_CONCURRENT_LOCK) != 0);

     Assert(object->objectSubId == 0);
     index_drop(object->objectId, concurrent, concurrent_lock_mode);
    }
    else
    {
     if (object->objectSubId != 0)
      RemoveAttributeById(object->objectId,
           object->objectSubId);
     else
      heap_drop_with_catalog(object->objectId);
    }





    if (relKind == RELKIND_SEQUENCE)
     DeleteSequenceTuple(object->objectId);
    break;
   }

  case 144:
   RemoveFunctionById(object->objectId);
   break;

  case 129:
   RemoveTypeById(object->objectId);
   break;

  case 162:
   DropCastById(object->objectId);
   break;

  case 160:
   RemoveCollationById(object->objectId);
   break;

  case 159:
   RemoveConstraintById(object->objectId);
   break;

  case 158:
   RemoveConversionById(object->objectId);
   break;

  case 155:
   RemoveAttrDefaultById(object->objectId);
   break;

  case 150:
   DropProceduralLanguageById(object->objectId);
   break;

  case 149:
   LargeObjectDrop(object->objectId);
   break;

  case 147:
   RemoveOperatorById(object->objectId);
   break;

  case 148:
   RemoveOpClassById(object->objectId);
   break;

  case 146:
   RemoveOpFamilyById(object->objectId);
   break;

  case 165:
   RemoveAccessMethodById(object->objectId);
   break;

  case 164:
   RemoveAmOpEntryById(object->objectId);
   break;

  case 163:
   RemoveAmProcEntryById(object->objectId);
   break;

  case 141:
   RemoveRewriteRuleById(object->objectId);
   break;

  case 134:
   RemoveTriggerById(object->objectId);
   break;

  case 139:
   RemoveSchemaById(object->objectId);
   break;

  case 138:
   RemoveStatisticsById(object->objectId);
   break;

  case 131:
   RemoveTSParserById(object->objectId);
   break;

  case 132:
   RemoveTSDictionaryById(object->objectId);
   break;

  case 130:
   RemoveTSTemplateById(object->objectId);
   break;

  case 133:
   RemoveTSConfigurationById(object->objectId);
   break;






  case 152:
   RemoveForeignDataWrapperById(object->objectId);
   break;

  case 151:
   RemoveForeignServerById(object->objectId);
   break;

  case 128:
   RemoveUserMappingById(object->objectId);
   break;

  case 156:
   RemoveDefaultACLById(object->objectId);
   break;

  case 153:
   RemoveExtensionById(object->objectId);
   break;

  case 154:
   RemoveEventTriggerById(object->objectId);
   break;

  case 145:
   RemovePolicyById(object->objectId);
   break;

  case 143:
   RemovePublicationById(object->objectId);
   break;

  case 142:
   RemovePublicationRelById(object->objectId);
   break;

  case 135:
   DropTransformById(object->objectId);
   break;




  case 140:
  case 157:
  case 136:
  case 137:
   elog(ERROR, "global objects cannot be deleted by doDeletion");
   break;





 }
}
