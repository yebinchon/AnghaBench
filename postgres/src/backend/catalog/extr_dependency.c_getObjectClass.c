
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int classId; scalar_t__ objectSubId; } ;
typedef int ObjectClass ;
typedef TYPE_1__ ObjectAddress ;
 int ERROR ;







 int OCLASS_AM ;
 int OCLASS_AMOP ;
 int OCLASS_AMPROC ;
 int OCLASS_CAST ;
 int OCLASS_CLASS ;
 int OCLASS_COLLATION ;
 int OCLASS_CONSTRAINT ;
 int OCLASS_CONVERSION ;
 int OCLASS_DATABASE ;
 int OCLASS_DEFACL ;
 int OCLASS_DEFAULT ;
 int OCLASS_EVENT_TRIGGER ;
 int OCLASS_EXTENSION ;
 int OCLASS_FDW ;
 int OCLASS_FOREIGN_SERVER ;
 int OCLASS_LANGUAGE ;
 int OCLASS_LARGEOBJECT ;
 int OCLASS_OPCLASS ;
 int OCLASS_OPERATOR ;
 int OCLASS_OPFAMILY ;
 int OCLASS_POLICY ;
 int OCLASS_PROC ;
 int OCLASS_PUBLICATION ;
 int OCLASS_PUBLICATION_REL ;
 int OCLASS_REWRITE ;
 int OCLASS_ROLE ;
 int OCLASS_SCHEMA ;
 int OCLASS_STATISTIC_EXT ;
 int OCLASS_SUBSCRIPTION ;
 int OCLASS_TBLSPACE ;
 int OCLASS_TRANSFORM ;
 int OCLASS_TRIGGER ;
 int OCLASS_TSCONFIG ;
 int OCLASS_TSDICT ;
 int OCLASS_TSPARSER ;
 int OCLASS_TSTEMPLATE ;
 int OCLASS_TYPE ;
 int OCLASS_USER_MAPPING ;
 int elog (int ,char*,int) ;

ObjectClass
getObjectClass(const ObjectAddress *object)
{

 if (object->classId != 140 &&
  object->objectSubId != 0)
  elog(ERROR, "invalid non-zero objectSubId for object class %u",
    object->classId);

 switch (object->classId)
 {
  case 140:

   return OCLASS_CLASS;

  case 143:
   return OCLASS_PROC;

  case 129:
   return OCLASS_TYPE;

  case 160:
   return OCLASS_CAST;

  case 159:
   return OCLASS_COLLATION;

  case 158:
   return OCLASS_CONSTRAINT;

  case 157:
   return OCLASS_CONVERSION;

  case 162:
   return OCLASS_DEFAULT;

  case 150:
   return OCLASS_LANGUAGE;

  case 149:
   return OCLASS_LARGEOBJECT;

  case 145:
   return OCLASS_OPERATOR;

  case 147:
   return OCLASS_OPCLASS;

  case 146:
   return OCLASS_OPFAMILY;

  case 163:
   return OCLASS_AM;

  case 165:
   return OCLASS_AMOP;

  case 164:
   return OCLASS_AMPROC;

  case 139:
   return OCLASS_REWRITE;

  case 130:
   return OCLASS_TRIGGER;

  case 148:
   return OCLASS_SCHEMA;

  case 138:
   return OCLASS_STATISTIC_EXT;

  case 134:
   return OCLASS_TSPARSER;

  case 135:
   return OCLASS_TSDICT;

  case 133:
   return OCLASS_TSTEMPLATE;

  case 136:
   return OCLASS_TSCONFIG;

  case 161:
   return OCLASS_ROLE;

  case 156:
   return OCLASS_DATABASE;

  case 132:
   return OCLASS_TBLSPACE;

  case 152:
   return OCLASS_FDW;

  case 151:
   return OCLASS_FOREIGN_SERVER;

  case 128:
   return OCLASS_USER_MAPPING;

  case 155:
   return OCLASS_DEFACL;

  case 153:
   return OCLASS_EXTENSION;

  case 154:
   return OCLASS_EVENT_TRIGGER;

  case 144:
   return OCLASS_POLICY;

  case 141:
   return OCLASS_PUBLICATION;

  case 142:
   return OCLASS_PUBLICATION_REL;

  case 137:
   return OCLASS_SUBSCRIPTION;

  case 131:
   return OCLASS_TRANSFORM;
 }


 elog(ERROR, "unrecognized object class: %u", object->classId);
 return OCLASS_CLASS;
}
