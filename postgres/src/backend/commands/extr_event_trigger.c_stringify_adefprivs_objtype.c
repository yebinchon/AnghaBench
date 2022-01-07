
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ObjectType ;


 int ERROR ;
 int elog (int ,char*,int) ;

__attribute__((used)) static const char *
stringify_adefprivs_objtype(ObjectType objtype)
{
 switch (objtype)
 {
  case 170:
   return "COLUMNS";
  case 138:
   return "TABLES";
  case 142:
   return "SEQUENCES";
  case 168:
   return "DATABASES";
  case 165:
   return "DOMAINS";
  case 161:
   return "FOREIGN DATA WRAPPERS";
  case 160:
   return "FOREIGN SERVERS";
  case 158:
   return "FUNCTIONS";
  case 156:
   return "LANGUAGES";
  case 155:
   return "LARGE OBJECTS";
  case 143:
   return "SCHEMAS";
  case 149:
   return "PROCEDURES";
  case 145:
   return "ROUTINES";
  case 137:
   return "TABLESPACES";
  case 130:
   return "TYPES";

  case 177:
  case 176:
  case 175:
  case 174:
  case 173:
  case 172:
  case 171:
  case 169:
  case 166:
  case 167:
  case 164:
  case 163:
  case 162:
  case 159:
  case 157:
  case 154:
  case 153:
  case 152:
  case 151:
  case 150:
  case 148:
  case 147:
  case 146:
  case 144:
  case 141:
  case 140:
  case 139:
  case 136:
  case 135:
  case 134:
  case 133:
  case 132:
  case 131:
  case 129:
  case 128:
   elog(ERROR, "unsupported object type: %d", (int) objtype);
 }

 return "???";
}
