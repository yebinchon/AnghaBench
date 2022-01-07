
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ObjectType ;


 int ERROR ;
 int elog (int ,char*,int) ;

__attribute__((used)) static const char *
stringify_grant_objtype(ObjectType objtype)
{
 switch (objtype)
 {
  case 170:
   return "COLUMN";
  case 138:
   return "TABLE";
  case 142:
   return "SEQUENCE";
  case 168:
   return "DATABASE";
  case 165:
   return "DOMAIN";
  case 161:
   return "FOREIGN DATA WRAPPER";
  case 160:
   return "FOREIGN SERVER";
  case 158:
   return "FUNCTION";
  case 156:
   return "LANGUAGE";
  case 155:
   return "LARGE OBJECT";
  case 143:
   return "SCHEMA";
  case 149:
   return "PROCEDURE";
  case 145:
   return "ROUTINE";
  case 137:
   return "TABLESPACE";
  case 130:
   return "TYPE";

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
