
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;


 int Assert (int) ;
 scalar_t__ DatabaseNameIndexId ;
 int RelationSupportsSysCache (scalar_t__) ;
 scalar_t__ SharedSecLabelObjectIndexId ;
 scalar_t__ SharedSecLabelRelationId ;
 scalar_t__ TriggerRelidNameIndexId ;

bool
RelationIdIsInInitFile(Oid relationId)
{
 if (relationId == SharedSecLabelRelationId ||
  relationId == TriggerRelidNameIndexId ||
  relationId == DatabaseNameIndexId ||
  relationId == SharedSecLabelObjectIndexId)
 {




  Assert(!RelationSupportsSysCache(relationId));
  return 1;
 }
 return RelationSupportsSysCache(relationId);
}
