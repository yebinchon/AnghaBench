
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int objectId; int objectSubId; } ;
struct TYPE_10__ {char* data; } ;
typedef TYPE_1__ StringInfoData ;
typedef TYPE_2__ ObjectAddress ;
 int appendStringInfoString (TYPE_1__*,char*) ;
 int getConstraintTypeDescription (TYPE_1__*,int ) ;
 int getObjectClass (TYPE_2__ const*) ;
 int getProcedureTypeDescription (TYPE_1__*,int ) ;
 int getRelationTypeDescription (TYPE_1__*,int ,int ) ;
 int initStringInfo (TYPE_1__*) ;

char *
getObjectTypeDescription(const ObjectAddress *object)
{
 StringInfoData buffer;

 initStringInfo(&buffer);

 switch (getObjectClass(object))
 {
  case 161:
   getRelationTypeDescription(&buffer, object->objectId,
            object->objectSubId);
   break;

  case 144:
   getProcedureTypeDescription(&buffer, object->objectId);
   break;

  case 129:
   appendStringInfoString(&buffer, "type");
   break;

  case 162:
   appendStringInfoString(&buffer, "cast");
   break;

  case 160:
   appendStringInfoString(&buffer, "collation");
   break;

  case 159:
   getConstraintTypeDescription(&buffer, object->objectId);
   break;

  case 158:
   appendStringInfoString(&buffer, "conversion");
   break;

  case 155:
   appendStringInfoString(&buffer, "default value");
   break;

  case 150:
   appendStringInfoString(&buffer, "language");
   break;

  case 149:
   appendStringInfoString(&buffer, "large object");
   break;

  case 147:
   appendStringInfoString(&buffer, "operator");
   break;

  case 148:
   appendStringInfoString(&buffer, "operator class");
   break;

  case 146:
   appendStringInfoString(&buffer, "operator family");
   break;

  case 165:
   appendStringInfoString(&buffer, "access method");
   break;

  case 164:
   appendStringInfoString(&buffer, "operator of access method");
   break;

  case 163:
   appendStringInfoString(&buffer, "function of access method");
   break;

  case 141:
   appendStringInfoString(&buffer, "rule");
   break;

  case 134:
   appendStringInfoString(&buffer, "trigger");
   break;

  case 139:
   appendStringInfoString(&buffer, "schema");
   break;

  case 138:
   appendStringInfoString(&buffer, "statistics object");
   break;

  case 131:
   appendStringInfoString(&buffer, "text search parser");
   break;

  case 132:
   appendStringInfoString(&buffer, "text search dictionary");
   break;

  case 130:
   appendStringInfoString(&buffer, "text search template");
   break;

  case 133:
   appendStringInfoString(&buffer, "text search configuration");
   break;

  case 140:
   appendStringInfoString(&buffer, "role");
   break;

  case 157:
   appendStringInfoString(&buffer, "database");
   break;

  case 136:
   appendStringInfoString(&buffer, "tablespace");
   break;

  case 152:
   appendStringInfoString(&buffer, "foreign-data wrapper");
   break;

  case 151:
   appendStringInfoString(&buffer, "server");
   break;

  case 128:
   appendStringInfoString(&buffer, "user mapping");
   break;

  case 156:
   appendStringInfoString(&buffer, "default acl");
   break;

  case 153:
   appendStringInfoString(&buffer, "extension");
   break;

  case 154:
   appendStringInfoString(&buffer, "event trigger");
   break;

  case 145:
   appendStringInfoString(&buffer, "policy");
   break;

  case 143:
   appendStringInfoString(&buffer, "publication");
   break;

  case 142:
   appendStringInfoString(&buffer, "publication relation");
   break;

  case 137:
   appendStringInfoString(&buffer, "subscription");
   break;

  case 135:
   appendStringInfoString(&buffer, "transform");
   break;





 }

 return buffer.data;
}
