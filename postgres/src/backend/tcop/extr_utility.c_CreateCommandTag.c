
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_50__ TYPE_9__ ;
typedef struct TYPE_49__ TYPE_8__ ;
typedef struct TYPE_48__ TYPE_7__ ;
typedef struct TYPE_47__ TYPE_6__ ;
typedef struct TYPE_46__ TYPE_5__ ;
typedef struct TYPE_45__ TYPE_4__ ;
typedef struct TYPE_44__ TYPE_3__ ;
typedef struct TYPE_43__ TYPE_2__ ;
typedef struct TYPE_42__ TYPE_25__ ;
typedef struct TYPE_41__ TYPE_24__ ;
typedef struct TYPE_40__ TYPE_23__ ;
typedef struct TYPE_39__ TYPE_22__ ;
typedef struct TYPE_38__ TYPE_21__ ;
typedef struct TYPE_37__ TYPE_20__ ;
typedef struct TYPE_36__ TYPE_1__ ;
typedef struct TYPE_35__ TYPE_19__ ;
typedef struct TYPE_34__ TYPE_18__ ;
typedef struct TYPE_33__ TYPE_17__ ;
typedef struct TYPE_32__ TYPE_16__ ;
typedef struct TYPE_31__ TYPE_15__ ;
typedef struct TYPE_30__ TYPE_14__ ;
typedef struct TYPE_29__ TYPE_13__ ;
typedef struct TYPE_28__ TYPE_12__ ;
typedef struct TYPE_27__ TYPE_11__ ;
typedef struct TYPE_26__ TYPE_10__ ;


struct TYPE_36__ {int kind; } ;
typedef TYPE_1__ VariableSetStmt ;
struct TYPE_43__ {int is_vacuumcmd; } ;
typedef TYPE_2__ VacuumStmt ;
struct TYPE_44__ {int kind; } ;
typedef TYPE_3__ TransactionStmt ;
struct TYPE_50__ {int strength; } ;
struct TYPE_49__ {scalar_t__ commandType; int * utilityStmt; int rowMarks; } ;
struct TYPE_48__ {scalar_t__ commandType; int * utilityStmt; int rowMarks; } ;
struct TYPE_47__ {int * stmt; } ;
struct TYPE_46__ {int renameType; int relationType; } ;
struct TYPE_45__ {int strength; } ;
struct TYPE_42__ {int objtype; } ;
struct TYPE_41__ {int objectType; } ;
struct TYPE_40__ {int objectType; } ;
struct TYPE_39__ {int objectType; } ;
struct TYPE_38__ {int objtype; } ;
struct TYPE_37__ {int relkind; } ;
struct TYPE_35__ {int * portalname; } ;
struct TYPE_34__ {int is_procedure; } ;
struct TYPE_33__ {int is_select_into; int relkind; } ;
struct TYPE_32__ {int * name; } ;
struct TYPE_31__ {int kind; } ;
struct TYPE_30__ {int target; } ;
struct TYPE_29__ {int removeType; } ;
struct TYPE_28__ {int ismove; } ;
struct TYPE_27__ {int is_grant; } ;
struct TYPE_26__ {int is_grant; } ;
typedef TYPE_4__ RowMarkClause ;
typedef TYPE_5__ RenameStmt ;
typedef TYPE_6__ RawStmt ;
typedef TYPE_7__ Query ;
typedef TYPE_8__ PlannedStmt ;
typedef TYPE_9__ PlanRowMark ;
typedef int Node ;
typedef TYPE_10__ GrantStmt ;
typedef TYPE_11__ GrantRoleStmt ;
typedef TYPE_12__ FetchStmt ;
typedef TYPE_13__ DropStmt ;
typedef TYPE_14__ DiscardStmt ;
typedef TYPE_15__ DefineStmt ;
typedef TYPE_16__ DeallocateStmt ;
typedef TYPE_17__ CreateTableAsStmt ;
typedef TYPE_18__ CreateFunctionStmt ;
typedef TYPE_19__ ClosePortalStmt ;
typedef TYPE_20__ AlterTableStmt ;
typedef TYPE_21__ AlterTableMoveAllStmt ;
typedef TYPE_22__ AlterOwnerStmt ;
typedef TYPE_23__ AlterObjectSchemaStmt ;
typedef TYPE_24__ AlterObjectDependsStmt ;
typedef TYPE_25__ AlterFunctionStmt ;


 char* AlterObjectTypeCommandTag (int ) ;
 int NIL ;




 int OBJECT_COLUMN ;
 int WARNING ;
 int elog (int ,char*,int) ;
 scalar_t__ linitial (int ) ;
 int nodeTag (int *) ;

const char *
CreateCommandTag(Node *parsetree)
{
 const char *tag;

 switch (nodeTag(parsetree))
 {

  case 149:
   tag = CreateCommandTag(((RawStmt *) parsetree)->stmt);
   break;


  case 157:
   tag = "INSERT";
   break;

  case 174:
   tag = "DELETE";
   break;

  case 138:
   tag = "UPDATE";
   break;

  case 142:
   tag = "SELECT";
   break;


  case 141:
   {
    TransactionStmt *stmt = (TransactionStmt *) parsetree;

    switch (stmt->kind)
    {
     case 255:
      tag = "BEGIN";
      break;

     case 246:
      tag = "START TRANSACTION";
      break;

     case 254:
      tag = "COMMIT";
      break;

     case 250:
     case 248:
      tag = "ROLLBACK";
      break;

     case 247:
      tag = "SAVEPOINT";
      break;

     case 251:
      tag = "RELEASE";
      break;

     case 252:
      tag = "PREPARE TRANSACTION";
      break;

     case 253:
      tag = "COMMIT PREPARED";
      break;

     case 249:
      tag = "ROLLBACK PREPARED";
      break;

     default:
      tag = "???";
      break;
    }
   }
   break;

  case 176:
   tag = "DECLARE CURSOR";
   break;

  case 212:
   {
    ClosePortalStmt *stmt = (ClosePortalStmt *) parsetree;

    if (stmt->portalname == ((void*)0))
     tag = "CLOSE CURSOR ALL";
    else
     tag = "CLOSE CURSOR";
   }
   break;

  case 162:
   {
    FetchStmt *stmt = (FetchStmt *) parsetree;

    tag = (stmt->ismove) ? "MOVE" : "FETCH";
   }
   break;

  case 203:
   tag = "CREATE DOMAIN";
   break;

  case 188:
   tag = "CREATE SCHEMA";
   break;

  case 185:
   tag = "CREATE TABLE";
   break;

  case 182:
   tag = "CREATE TABLESPACE";
   break;

  case 167:
   tag = "DROP TABLESPACE";
   break;

  case 217:
   tag = "ALTER TABLESPACE";
   break;

  case 200:
   tag = "CREATE EXTENSION";
   break;

  case 237:
   tag = "ALTER EXTENSION";
   break;

  case 238:
   tag = "ALTER EXTENSION";
   break;

  case 199:
   tag = "CREATE FOREIGN DATA WRAPPER";
   break;

  case 236:
   tag = "ALTER FOREIGN DATA WRAPPER";
   break;

  case 198:
   tag = "CREATE SERVER";
   break;

  case 235:
   tag = "ALTER SERVER";
   break;

  case 179:
   tag = "CREATE USER MAPPING";
   break;

  case 215:
   tag = "ALTER USER MAPPING";
   break;

  case 166:
   tag = "DROP USER MAPPING";
   break;

  case 197:
   tag = "CREATE FOREIGN TABLE";
   break;

  case 159:
   tag = "IMPORT FOREIGN SCHEMA";
   break;

  case 169:
   switch (((DropStmt *) parsetree)->removeType)
   {
    case 264:
     tag = "DROP TABLE";
     break;
    case 266:
     tag = "DROP SEQUENCE";
     break;
    case 256:
     tag = "DROP VIEW";
     break;
    case 276:
     tag = "DROP MATERIALIZED VIEW";
     break;
    case 278:
     tag = "DROP INDEX";
     break;
    case 257:
     tag = "DROP TYPE";
     break;
    case 285:
     tag = "DROP DOMAIN";
     break;
    case 287:
     tag = "DROP COLLATION";
     break;
    case 286:
     tag = "DROP CONVERSION";
     break;
    case 267:
     tag = "DROP SCHEMA";
     break;
    case 259:
     tag = "DROP TEXT SEARCH PARSER";
     break;
    case 260:
     tag = "DROP TEXT SEARCH DICTIONARY";
     break;
    case 258:
     tag = "DROP TEXT SEARCH TEMPLATE";
     break;
    case 261:
     tag = "DROP TEXT SEARCH CONFIGURATION";
     break;
    case 280:
     tag = "DROP FOREIGN TABLE";
     break;
    case 283:
     tag = "DROP EXTENSION";
     break;
    case 279:
     tag = "DROP FUNCTION";
     break;
    case 271:
     tag = "DROP PROCEDURE";
     break;
    case 269:
     tag = "DROP ROUTINE";
     break;
    case 289:
     tag = "DROP AGGREGATE";
     break;
    case 274:
     tag = "DROP OPERATOR";
     break;
    case 277:
     tag = "DROP LANGUAGE";
     break;
    case 288:
     tag = "DROP CAST";
     break;
    case 262:
     tag = "DROP TRIGGER";
     break;
    case 284:
     tag = "DROP EVENT TRIGGER";
     break;
    case 268:
     tag = "DROP RULE";
     break;
    case 282:
     tag = "DROP FOREIGN DATA WRAPPER";
     break;
    case 281:
     tag = "DROP SERVER";
     break;
    case 275:
     tag = "DROP OPERATOR CLASS";
     break;
    case 273:
     tag = "DROP OPERATOR FAMILY";
     break;
    case 272:
     tag = "DROP POLICY";
     break;
    case 263:
     tag = "DROP TRANSFORM";
     break;
    case 290:
     tag = "DROP ACCESS METHOD";
     break;
    case 270:
     tag = "DROP PUBLICATION";
     break;
    case 265:
     tag = "DROP STATISTICS";
     break;
    default:
     tag = "???";
   }
   break;

  case 140:
   tag = "TRUNCATE TABLE";
   break;

  case 210:
   tag = "COMMENT";
   break;

  case 143:
   tag = "SECURITY LABEL";
   break;

  case 207:
   tag = "COPY";
   break;

  case 145:




   tag = AlterObjectTypeCommandTag(
    ((RenameStmt *) parsetree)->renameType == OBJECT_COLUMN ?
    ((RenameStmt *) parsetree)->relationType :
    ((RenameStmt *) parsetree)->renameType);
   break;

  case 233:
   tag = AlterObjectTypeCommandTag(((AlterObjectDependsStmt *) parsetree)->objectType);
   break;

  case 232:
   tag = AlterObjectTypeCommandTag(((AlterObjectSchemaStmt *) parsetree)->objectType);
   break;

  case 229:
   tag = AlterObjectTypeCommandTag(((AlterOwnerStmt *) parsetree)->objectType);
   break;

  case 218:
   tag = AlterObjectTypeCommandTag(((AlterTableMoveAllStmt *) parsetree)->objtype);
   break;

  case 216:
   tag = AlterObjectTypeCommandTag(((AlterTableStmt *) parsetree)->relkind);
   break;

  case 241:
   tag = "ALTER DOMAIN";
   break;

  case 234:
   switch (((AlterFunctionStmt *) parsetree)->objtype)
   {
    case 279:
     tag = "ALTER FUNCTION";
     break;
    case 271:
     tag = "ALTER PROCEDURE";
     break;
    case 269:
     tag = "ALTER ROUTINE";
     break;
    default:
     tag = "???";
   }
   break;

  case 160:
   {
    GrantStmt *stmt = (GrantStmt *) parsetree;

    tag = (stmt->is_grant) ? "GRANT" : "REVOKE";
   }
   break;

  case 161:
   {
    GrantRoleStmt *stmt = (GrantRoleStmt *) parsetree;

    tag = (stmt->is_grant) ? "GRANT ROLE" : "REVOKE ROLE";
   }
   break;

  case 242:
   tag = "ALTER DEFAULT PRIVILEGES";
   break;

  case 175:
   switch (((DefineStmt *) parsetree)->kind)
   {
    case 289:
     tag = "CREATE AGGREGATE";
     break;
    case 274:
     tag = "CREATE OPERATOR";
     break;
    case 257:
     tag = "CREATE TYPE";
     break;
    case 259:
     tag = "CREATE TEXT SEARCH PARSER";
     break;
    case 260:
     tag = "CREATE TEXT SEARCH DICTIONARY";
     break;
    case 258:
     tag = "CREATE TEXT SEARCH TEMPLATE";
     break;
    case 261:
     tag = "CREATE TEXT SEARCH CONFIGURATION";
     break;
    case 287:
     tag = "CREATE COLLATION";
     break;
    case 290:
     tag = "CREATE ACCESS METHOD";
     break;
    default:
     tag = "???";
   }
   break;

  case 209:
   tag = "CREATE TYPE";
   break;

  case 202:
   tag = "CREATE TYPE";
   break;

  case 190:
   tag = "CREATE TYPE";
   break;

  case 240:
   tag = "ALTER TYPE";
   break;

  case 134:
   tag = "CREATE VIEW";
   break;

  case 196:
   if (((CreateFunctionStmt *) parsetree)->is_procedure)
    tag = "CREATE PROCEDURE";
   else
    tag = "CREATE FUNCTION";
   break;

  case 158:
   tag = "CREATE INDEX";
   break;

  case 144:
   tag = "CREATE RULE";
   break;

  case 187:
   tag = "CREATE SEQUENCE";
   break;

  case 224:
   tag = "ALTER SEQUENCE";
   break;

  case 172:
   tag = "DO";
   break;

  case 178:
   tag = "CREATE DATABASE";
   break;

  case 243:
   tag = "ALTER DATABASE";
   break;

  case 244:
   tag = "ALTER DATABASE";
   break;

  case 165:
   tag = "DROP DATABASE";
   break;

  case 153:
   tag = "NOTIFY";
   break;

  case 156:
   tag = "LISTEN";
   break;

  case 139:
   tag = "UNLISTEN";
   break;

  case 155:
   tag = "LOAD";
   break;

  case 214:
   tag = "CALL";
   break;

  case 211:
   tag = "CLUSTER";
   break;

  case 137:
   if (((VacuumStmt *) parsetree)->is_vacuumcmd)
    tag = "VACUUM";
   else
    tag = "ANALYZE";
   break;

  case 163:
   tag = "EXPLAIN";
   break;

  case 183:
   switch (((CreateTableAsStmt *) parsetree)->relkind)
   {
    case 264:
     if (((CreateTableAsStmt *) parsetree)->is_select_into)
      tag = "SELECT INTO";
     else
      tag = "CREATE TABLE AS";
     break;
    case 276:
     tag = "CREATE MATERIALIZED VIEW";
     break;
    default:
     tag = "???";
   }
   break;

  case 147:
   tag = "REFRESH MATERIALIZED VIEW";
   break;

  case 221:
   tag = "ALTER SYSTEM";
   break;

  case 136:
   switch (((VariableSetStmt *) parsetree)->kind)
   {
    case 128:
    case 131:
    case 130:
    case 129:
     tag = "SET";
     break;
    case 133:
    case 132:
     tag = "RESET";
     break;
    default:
     tag = "???";
   }
   break;

  case 135:
   tag = "SHOW";
   break;

  case 173:
   switch (((DiscardStmt *) parsetree)->target)
   {
    case 298:
     tag = "DISCARD ALL";
     break;
    case 297:
     tag = "DISCARD PLANS";
     break;
    case 295:
     tag = "DISCARD TEMP";
     break;
    case 296:
     tag = "DISCARD SEQUENCES";
     break;
    default:
     tag = "???";
   }
   break;

  case 181:
   tag = "CREATE TRANSFORM";
   break;

  case 180:
   tag = "CREATE TRIGGER";
   break;

  case 201:
   tag = "CREATE EVENT TRIGGER";
   break;

  case 239:
   tag = "ALTER EVENT TRIGGER";
   break;

  case 193:
   tag = "CREATE LANGUAGE";
   break;

  case 189:
   tag = "CREATE ROLE";
   break;

  case 225:
   tag = "ALTER ROLE";
   break;

  case 226:
   tag = "ALTER ROLE";
   break;

  case 170:
   tag = "DROP ROLE";
   break;

  case 171:
   tag = "DROP OWNED";
   break;

  case 148:
   tag = "REASSIGN OWNED";
   break;

  case 154:
   tag = "LOCK TABLE";
   break;

  case 208:
   tag = "SET CONSTRAINTS";
   break;

  case 213:
   tag = "CHECKPOINT";
   break;

  case 146:
   tag = "REINDEX";
   break;

  case 204:
   tag = "CREATE CONVERSION";
   break;

  case 205:
   tag = "CREATE CAST";
   break;

  case 195:
   tag = "CREATE OPERATOR CLASS";
   break;

  case 194:
   tag = "CREATE OPERATOR FAMILY";
   break;

  case 231:
   tag = "ALTER OPERATOR FAMILY";
   break;

  case 230:
   tag = "ALTER OPERATOR";
   break;

  case 219:
   tag = "ALTER TEXT SEARCH DICTIONARY";
   break;

  case 220:
   tag = "ALTER TEXT SEARCH CONFIGURATION";
   break;

  case 192:
   tag = "CREATE POLICY";
   break;

  case 228:
   tag = "ALTER POLICY";
   break;

  case 206:
   tag = "CREATE ACCESS METHOD";
   break;

  case 191:
   tag = "CREATE PUBLICATION";
   break;

  case 227:
   tag = "ALTER PUBLICATION";
   break;

  case 184:
   tag = "CREATE SUBSCRIPTION";
   break;

  case 222:
   tag = "ALTER SUBSCRIPTION";
   break;

  case 168:
   tag = "DROP SUBSCRIPTION";
   break;

  case 245:
   tag = "ALTER COLLATION";
   break;

  case 151:
   tag = "PREPARE";
   break;

  case 164:
   tag = "EXECUTE";
   break;

  case 186:
   tag = "CREATE STATISTICS";
   break;

  case 223:
   tag = "ALTER STATISTICS";
   break;

  case 177:
   {
    DeallocateStmt *stmt = (DeallocateStmt *) parsetree;

    if (stmt->name == ((void*)0))
     tag = "DEALLOCATE ALL";
    else
     tag = "DEALLOCATE";
   }
   break;


  case 152:
   {
    PlannedStmt *stmt = (PlannedStmt *) parsetree;

    switch (stmt->commandType)
    {
     case 301:






      if (stmt->rowMarks != NIL)
      {

       switch (((PlanRowMark *) linitial(stmt->rowMarks))->strength)
       {
        case 294:
         tag = "SELECT FOR KEY SHARE";
         break;
        case 292:
         tag = "SELECT FOR SHARE";
         break;
        case 293:
         tag = "SELECT FOR NO KEY UPDATE";
         break;
        case 291:
         tag = "SELECT FOR UPDATE";
         break;
        default:
         tag = "SELECT";
         break;
       }
      }
      else
       tag = "SELECT";
      break;
     case 300:
      tag = "UPDATE";
      break;
     case 302:
      tag = "INSERT";
      break;
     case 303:
      tag = "DELETE";
      break;
     case 299:
      tag = CreateCommandTag(stmt->utilityStmt);
      break;
     default:
      elog(WARNING, "unrecognized commandType: %d",
        (int) stmt->commandType);
      tag = "???";
      break;
    }
   }
   break;


  case 150:
   {
    Query *stmt = (Query *) parsetree;

    switch (stmt->commandType)
    {
     case 301:






      if (stmt->rowMarks != NIL)
      {

       switch (((RowMarkClause *) linitial(stmt->rowMarks))->strength)
       {
        case 294:
         tag = "SELECT FOR KEY SHARE";
         break;
        case 292:
         tag = "SELECT FOR SHARE";
         break;
        case 293:
         tag = "SELECT FOR NO KEY UPDATE";
         break;
        case 291:
         tag = "SELECT FOR UPDATE";
         break;
        default:
         tag = "???";
         break;
       }
      }
      else
       tag = "SELECT";
      break;
     case 300:
      tag = "UPDATE";
      break;
     case 302:
      tag = "INSERT";
      break;
     case 303:
      tag = "DELETE";
      break;
     case 299:
      tag = CreateCommandTag(stmt->utilityStmt);
      break;
     default:
      elog(WARNING, "unrecognized commandType: %d",
        (int) stmt->commandType);
      tag = "???";
      break;
    }
   }
   break;

  default:
   elog(WARNING, "unrecognized node type: %d",
     (int) nodeTag(parsetree));
   tag = "???";
   break;
 }

 return tag;
}
