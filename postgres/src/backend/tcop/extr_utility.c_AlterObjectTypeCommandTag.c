
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ObjectType ;
__attribute__((used)) static const char *
AlterObjectTypeCommandTag(ObjectType objtype)
{
 const char *tag;

 switch (objtype)
 {
  case 169:
   tag = "ALTER AGGREGATE";
   break;
  case 168:
   tag = "ALTER TYPE";
   break;
  case 167:
   tag = "ALTER CAST";
   break;
  case 166:
   tag = "ALTER COLLATION";
   break;
  case 165:
   tag = "ALTER TABLE";
   break;
  case 164:
   tag = "ALTER CONVERSION";
   break;
  case 163:
   tag = "ALTER DATABASE";
   break;
  case 162:
  case 161:
   tag = "ALTER DOMAIN";
   break;
  case 159:
   tag = "ALTER EXTENSION";
   break;
  case 158:
   tag = "ALTER FOREIGN DATA WRAPPER";
   break;
  case 157:
   tag = "ALTER SERVER";
   break;
  case 156:
   tag = "ALTER FOREIGN TABLE";
   break;
  case 155:
   tag = "ALTER FUNCTION";
   break;
  case 154:
   tag = "ALTER INDEX";
   break;
  case 153:
   tag = "ALTER LANGUAGE";
   break;
  case 152:
   tag = "ALTER LARGE OBJECT";
   break;
  case 150:
   tag = "ALTER OPERATOR CLASS";
   break;
  case 149:
   tag = "ALTER OPERATOR";
   break;
  case 148:
   tag = "ALTER OPERATOR FAMILY";
   break;
  case 147:
   tag = "ALTER POLICY";
   break;
  case 146:
   tag = "ALTER PROCEDURE";
   break;
  case 144:
   tag = "ALTER ROLE";
   break;
  case 143:
   tag = "ALTER ROUTINE";
   break;
  case 142:
   tag = "ALTER RULE";
   break;
  case 141:
   tag = "ALTER SCHEMA";
   break;
  case 140:
   tag = "ALTER SEQUENCE";
   break;
  case 136:
  case 137:
   tag = "ALTER TABLE";
   break;
  case 135:
   tag = "ALTER TABLESPACE";
   break;
  case 134:
   tag = "ALTER TRIGGER";
   break;
  case 160:
   tag = "ALTER EVENT TRIGGER";
   break;
  case 133:
   tag = "ALTER TEXT SEARCH CONFIGURATION";
   break;
  case 132:
   tag = "ALTER TEXT SEARCH DICTIONARY";
   break;
  case 131:
   tag = "ALTER TEXT SEARCH PARSER";
   break;
  case 130:
   tag = "ALTER TEXT SEARCH TEMPLATE";
   break;
  case 129:
   tag = "ALTER TYPE";
   break;
  case 128:
   tag = "ALTER VIEW";
   break;
  case 151:
   tag = "ALTER MATERIALIZED VIEW";
   break;
  case 145:
   tag = "ALTER PUBLICATION";
   break;
  case 138:
   tag = "ALTER SUBSCRIPTION";
   break;
  case 139:
   tag = "ALTER STATISTICS";
   break;
  default:
   tag = "???";
   break;
 }

 return tag;
}
