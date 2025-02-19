
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;


 scalar_t__ AuthIdOidIndexId ;
 scalar_t__ AuthIdRelationId ;
 scalar_t__ AuthIdRolnameIndexId ;
 scalar_t__ AuthMemMemRoleIndexId ;
 scalar_t__ AuthMemRelationId ;
 scalar_t__ AuthMemRoleMemIndexId ;
 scalar_t__ DatabaseNameIndexId ;
 scalar_t__ DatabaseOidIndexId ;
 scalar_t__ DatabaseRelationId ;
 scalar_t__ DbRoleSettingDatidRolidIndexId ;
 scalar_t__ DbRoleSettingRelationId ;
 scalar_t__ PLTemplateNameIndexId ;
 scalar_t__ PLTemplateRelationId ;
 scalar_t__ PgAuthidToastIndex ;
 scalar_t__ PgAuthidToastTable ;
 scalar_t__ PgDatabaseToastIndex ;
 scalar_t__ PgDatabaseToastTable ;
 scalar_t__ PgDbRoleSettingToastIndex ;
 scalar_t__ PgDbRoleSettingToastTable ;
 scalar_t__ PgPlTemplateToastIndex ;
 scalar_t__ PgPlTemplateToastTable ;
 scalar_t__ PgReplicationOriginToastIndex ;
 scalar_t__ PgReplicationOriginToastTable ;
 scalar_t__ PgShdescriptionToastIndex ;
 scalar_t__ PgShdescriptionToastTable ;
 scalar_t__ PgShseclabelToastIndex ;
 scalar_t__ PgShseclabelToastTable ;
 scalar_t__ PgSubscriptionToastIndex ;
 scalar_t__ PgSubscriptionToastTable ;
 scalar_t__ PgTablespaceToastIndex ;
 scalar_t__ PgTablespaceToastTable ;
 scalar_t__ ReplicationOriginIdentIndex ;
 scalar_t__ ReplicationOriginNameIndex ;
 scalar_t__ ReplicationOriginRelationId ;
 scalar_t__ SharedDependDependerIndexId ;
 scalar_t__ SharedDependReferenceIndexId ;
 scalar_t__ SharedDependRelationId ;
 scalar_t__ SharedDescriptionObjIndexId ;
 scalar_t__ SharedDescriptionRelationId ;
 scalar_t__ SharedSecLabelObjectIndexId ;
 scalar_t__ SharedSecLabelRelationId ;
 scalar_t__ SubscriptionNameIndexId ;
 scalar_t__ SubscriptionObjectIndexId ;
 scalar_t__ SubscriptionRelationId ;
 scalar_t__ TableSpaceRelationId ;
 scalar_t__ TablespaceNameIndexId ;
 scalar_t__ TablespaceOidIndexId ;

bool
IsSharedRelation(Oid relationId)
{

 if (relationId == AuthIdRelationId ||
  relationId == AuthMemRelationId ||
  relationId == DatabaseRelationId ||
  relationId == PLTemplateRelationId ||
  relationId == SharedDescriptionRelationId ||
  relationId == SharedDependRelationId ||
  relationId == SharedSecLabelRelationId ||
  relationId == TableSpaceRelationId ||
  relationId == DbRoleSettingRelationId ||
  relationId == ReplicationOriginRelationId ||
  relationId == SubscriptionRelationId)
  return 1;

 if (relationId == AuthIdRolnameIndexId ||
  relationId == AuthIdOidIndexId ||
  relationId == AuthMemRoleMemIndexId ||
  relationId == AuthMemMemRoleIndexId ||
  relationId == DatabaseNameIndexId ||
  relationId == DatabaseOidIndexId ||
  relationId == PLTemplateNameIndexId ||
  relationId == SharedDescriptionObjIndexId ||
  relationId == SharedDependDependerIndexId ||
  relationId == SharedDependReferenceIndexId ||
  relationId == SharedSecLabelObjectIndexId ||
  relationId == TablespaceOidIndexId ||
  relationId == TablespaceNameIndexId ||
  relationId == DbRoleSettingDatidRolidIndexId ||
  relationId == ReplicationOriginIdentIndex ||
  relationId == ReplicationOriginNameIndex ||
  relationId == SubscriptionObjectIndexId ||
  relationId == SubscriptionNameIndexId)
  return 1;

 if (relationId == PgAuthidToastTable ||
  relationId == PgAuthidToastIndex ||
  relationId == PgDatabaseToastTable ||
  relationId == PgDatabaseToastIndex ||
  relationId == PgDbRoleSettingToastTable ||
  relationId == PgDbRoleSettingToastIndex ||
  relationId == PgPlTemplateToastTable ||
  relationId == PgPlTemplateToastIndex ||
  relationId == PgReplicationOriginToastTable ||
  relationId == PgReplicationOriginToastIndex ||
  relationId == PgShdescriptionToastTable ||
  relationId == PgShdescriptionToastIndex ||
  relationId == PgShseclabelToastTable ||
  relationId == PgShseclabelToastIndex ||
  relationId == PgSubscriptionToastTable ||
  relationId == PgSubscriptionToastIndex ||
  relationId == PgTablespaceToastTable ||
  relationId == PgTablespaceToastIndex)
  return 1;
 return 0;
}
