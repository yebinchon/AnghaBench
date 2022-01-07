
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int subtype; int name; int def; int num; } ;
struct TYPE_15__ {int * subcmds; int newrelpersistence; int rewrite; void* chgPersistence; } ;
typedef int Relation ;
typedef int List ;
typedef int LOCKMODE ;
typedef TYPE_1__ AlteredTableInfo ;
typedef TYPE_2__ AlterTableCmd ;


 int ATCheckPartitionsNotInUse (int ,int ) ;
 TYPE_1__* ATGetQueueEntry (int **,int ) ;
 int ATPrepAddColumn (int **,int ,int,int,int,TYPE_2__*,int ) ;
 int ATPrepAddInherit (int ) ;
 int ATPrepAlterColumnType (int **,TYPE_1__*,int ,int,int,TYPE_2__*,int ) ;
 void* ATPrepChangePersistence (int ,int) ;
 int ATPrepDropColumn (int **,int ,int,int,TYPE_2__*,int ) ;
 int ATPrepDropNotNull (int ,int,int) ;
 int ATPrepSetNotNull (int **,int ,TYPE_2__*,int,int,int ) ;
 int ATPrepSetStatistics (int ,int ,int ,int ,int ) ;
 int ATPrepSetTableSpace (TYPE_1__*,int ,int ,int ) ;
 int ATSimplePermissions (int ,int) ;
 int ATSimpleRecursion (int **,int ,TYPE_2__*,int,int ) ;
 int ATT_COMPOSITE_TYPE ;
 int ATT_FOREIGN_TABLE ;
 int ATT_INDEX ;
 int ATT_MATVIEW ;
 int ATT_PARTITIONED_INDEX ;
 int ATT_TABLE ;
 int ATT_VIEW ;



 int AT_AddConstraintRecurse ;
 int AT_DropConstraintRecurse ;
 int AT_PASS_ADD_COL ;
 int AT_PASS_ADD_CONSTR ;
 int AT_PASS_ADD_INDEX ;
 int AT_PASS_ALTER_TYPE ;
 int AT_PASS_COL_ATTRS ;
 int AT_PASS_DROP ;
 int AT_PASS_MISC ;
 int AT_PASS_UNSET ;
 int AT_REWRITE_ALTER_PERSISTENCE ;
 int AT_ValidateConstraintRecurse ;
 int Assert (int) ;
 int ERROR ;
 int RELPERSISTENCE_PERMANENT ;
 int RELPERSISTENCE_UNLOGGED ;
 TYPE_2__* copyObject (TYPE_2__*) ;
 int elog (int ,char*,int) ;
 int lappend (int ,TYPE_2__*) ;

__attribute__((used)) static void
ATPrepCmd(List **wqueue, Relation rel, AlterTableCmd *cmd,
    bool recurse, bool recursing, LOCKMODE lockmode)
{
 AlteredTableInfo *tab;
 int pass = AT_PASS_UNSET;


 tab = ATGetQueueEntry(wqueue, rel);







 cmd = copyObject(cmd);





 switch (cmd->subtype)
 {
  case 183:
   ATSimplePermissions(rel,
        ATT_TABLE | ATT_COMPOSITE_TYPE | ATT_FOREIGN_TABLE);
   ATPrepAddColumn(wqueue, rel, recurse, recursing, 0, cmd,
       lockmode);

   pass = AT_PASS_ADD_COL;
   break;
  case 182:
   ATSimplePermissions(rel, ATT_VIEW);
   ATPrepAddColumn(wqueue, rel, recurse, recursing, 1, cmd,
       lockmode);

   pass = AT_PASS_ADD_COL;
   break;
  case 168:







   ATSimplePermissions(rel, ATT_TABLE | ATT_VIEW | ATT_FOREIGN_TABLE);
   ATSimpleRecursion(wqueue, rel, cmd, recurse, lockmode);

   pass = cmd->def ? AT_PASS_ADD_CONSTR : AT_PASS_DROP;
   break;
  case 180:
   ATSimplePermissions(rel, ATT_TABLE | ATT_VIEW | ATT_FOREIGN_TABLE);

   pass = AT_PASS_ADD_CONSTR;
   break;
  case 137:
   ATSimplePermissions(rel, ATT_TABLE | ATT_VIEW | ATT_FOREIGN_TABLE);

   pass = AT_PASS_COL_ATTRS;
   break;
  case 158:
   ATSimplePermissions(rel, ATT_TABLE | ATT_VIEW | ATT_FOREIGN_TABLE);

   pass = AT_PASS_DROP;
   break;
  case 156:
   ATSimplePermissions(rel, ATT_TABLE | ATT_FOREIGN_TABLE);
   ATPrepDropNotNull(rel, recurse, recursing);
   ATSimpleRecursion(wqueue, rel, cmd, recurse, lockmode);
   pass = AT_PASS_DROP;
   break;
  case 135:
   ATSimplePermissions(rel, ATT_TABLE | ATT_FOREIGN_TABLE);

   ATPrepSetNotNull(wqueue, rel, cmd, recurse, recursing, lockmode);
   pass = AT_PASS_COL_ATTRS;
   break;
  case 170:
   ATSimplePermissions(rel, ATT_TABLE | ATT_FOREIGN_TABLE);
   ATSimpleRecursion(wqueue, rel, cmd, recurse, lockmode);

   pass = AT_PASS_COL_ATTRS;
   break;
  case 132:
   ATSimpleRecursion(wqueue, rel, cmd, recurse, lockmode);

   ATPrepSetStatistics(rel, cmd->name, cmd->num, cmd->def, lockmode);
   pass = AT_PASS_MISC;
   break;
  case 134:
  case 139:
   ATSimplePermissions(rel, ATT_TABLE | ATT_MATVIEW | ATT_INDEX | ATT_FOREIGN_TABLE);

   pass = AT_PASS_MISC;
   break;
  case 131:
   ATSimplePermissions(rel, ATT_TABLE | ATT_MATVIEW | ATT_FOREIGN_TABLE);
   ATSimpleRecursion(wqueue, rel, cmd, recurse, lockmode);

   pass = AT_PASS_MISC;
   break;
  case 160:
   ATSimplePermissions(rel,
        ATT_TABLE | ATT_COMPOSITE_TYPE | ATT_FOREIGN_TABLE);
   ATPrepDropColumn(wqueue, rel, recurse, recursing, cmd, lockmode);

   pass = AT_PASS_DROP;
   break;
  case 179:
   ATSimplePermissions(rel, ATT_TABLE);


   pass = AT_PASS_ADD_INDEX;
   break;
  case 181:
   ATSimplePermissions(rel, ATT_TABLE | ATT_FOREIGN_TABLE);


   if (recurse)
    cmd->subtype = AT_AddConstraintRecurse;
   pass = AT_PASS_ADD_CONSTR;
   break;
  case 178:
   ATSimplePermissions(rel, ATT_TABLE);


   pass = AT_PASS_ADD_CONSTR;
   break;
  case 159:
   ATSimplePermissions(rel, ATT_TABLE | ATT_FOREIGN_TABLE);
   ATCheckPartitionsNotInUse(rel, lockmode);


   if (recurse)
    cmd->subtype = AT_DropConstraintRecurse;
   pass = AT_PASS_DROP;
   break;
  case 174:
   ATSimplePermissions(rel,
        ATT_TABLE | ATT_COMPOSITE_TYPE | ATT_FOREIGN_TABLE);

   ATPrepAlterColumnType(wqueue, tab, rel, recurse, recursing, cmd, lockmode);
   pass = AT_PASS_ALTER_TYPE;
   break;
  case 175:
   ATSimplePermissions(rel, ATT_FOREIGN_TABLE);


   pass = AT_PASS_MISC;
   break;
  case 171:


   pass = AT_PASS_MISC;
   break;
  case 169:
  case 161:
   ATSimplePermissions(rel, ATT_TABLE | ATT_MATVIEW);


   pass = AT_PASS_MISC;
   break;
  case 136:
   ATSimplePermissions(rel, ATT_TABLE);
   tab->chgPersistence = ATPrepChangePersistence(rel, 1);

   if (tab->chgPersistence)
   {
    tab->rewrite |= AT_REWRITE_ALTER_PERSISTENCE;
    tab->newrelpersistence = RELPERSISTENCE_PERMANENT;
   }
   pass = AT_PASS_MISC;
   break;
  case 129:
   ATSimplePermissions(rel, ATT_TABLE);
   tab->chgPersistence = ATPrepChangePersistence(rel, 0);

   if (tab->chgPersistence)
   {
    tab->rewrite |= AT_REWRITE_ALTER_PERSISTENCE;
    tab->newrelpersistence = RELPERSISTENCE_UNLOGGED;
   }
   pass = AT_PASS_MISC;
   break;
  case 154:
   ATSimplePermissions(rel, ATT_TABLE | ATT_FOREIGN_TABLE);
   pass = AT_PASS_DROP;
   break;
  case 130:
   ATSimplePermissions(rel, ATT_TABLE | ATT_MATVIEW | ATT_INDEX |
        ATT_PARTITIONED_INDEX);

   ATPrepSetTableSpace(tab, rel, cmd->name, lockmode);
   pass = AT_PASS_MISC;
   break;
  case 133:
  case 138:
  case 141:
   ATSimplePermissions(rel, ATT_TABLE | ATT_VIEW | ATT_MATVIEW | ATT_INDEX);


   pass = AT_PASS_MISC;
   break;
  case 177:
   ATSimplePermissions(rel, ATT_TABLE | ATT_FOREIGN_TABLE);

   ATPrepAddInherit(rel);
   pass = AT_PASS_MISC;
   break;
  case 157:
   ATSimplePermissions(rel, ATT_TABLE | ATT_FOREIGN_TABLE);


   pass = AT_PASS_MISC;
   break;
  case 173:
   ATSimplePermissions(rel, ATT_TABLE);
   pass = AT_PASS_MISC;
   break;
  case 128:
   ATSimplePermissions(rel, ATT_TABLE | ATT_FOREIGN_TABLE);


   if (recurse)
    cmd->subtype = AT_ValidateConstraintRecurse;
   pass = AT_PASS_MISC;
   break;
  case 140:
   ATSimplePermissions(rel, ATT_TABLE | ATT_MATVIEW);
   pass = AT_PASS_MISC;


   break;
  case 147:
  case 152:
  case 150:
  case 146:
  case 145:
  case 164:
  case 163:
  case 162:
   ATSimplePermissions(rel, ATT_TABLE | ATT_FOREIGN_TABLE);
   pass = AT_PASS_MISC;
   break;
  case 148:
  case 153:
  case 151:
  case 165:
  case 176:
  case 155:
  case 149:
  case 166:
  case 144:
  case 142:
   ATSimplePermissions(rel, ATT_TABLE);


   pass = AT_PASS_MISC;
   break;
  case 143:
   ATSimplePermissions(rel, ATT_FOREIGN_TABLE);

   pass = AT_PASS_MISC;
   break;
  case 172:
   ATSimplePermissions(rel, ATT_TABLE | ATT_PARTITIONED_INDEX);

   pass = AT_PASS_MISC;
   break;
  case 167:
   ATSimplePermissions(rel, ATT_TABLE);

   pass = AT_PASS_MISC;
   break;
  default:
   elog(ERROR, "unrecognized alter table type: %d",
     (int) cmd->subtype);
   pass = AT_PASS_UNSET;
   break;
 }
 Assert(pass > AT_PASS_UNSET);


 tab->subcmds[pass] = lappend(tab->subcmds[pass], cmd);
}
