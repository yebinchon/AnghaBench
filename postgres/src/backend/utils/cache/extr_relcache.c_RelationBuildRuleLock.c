
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_18__ {int is_instead; int ev_enabled; scalar_t__ ev_type; int oid; } ;
struct TYPE_17__ {TYPE_2__* rd_rules; int * rd_rulescxt; TYPE_1__* rd_rel; } ;
struct TYPE_16__ {int * qual; int * actions; int isInstead; int enabled; scalar_t__ event; int ruleId; } ;
struct TYPE_15__ {int numLocks; TYPE_3__** rules; } ;
struct TYPE_14__ {int relowner; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef TYPE_2__ RuleLock ;
typedef TYPE_3__ RewriteRule ;
typedef TYPE_4__* Relation ;
typedef int Node ;
typedef int * MemoryContext ;
typedef int List ;
typedef int HeapTuple ;
typedef TYPE_5__* Form_pg_rewrite ;
typedef int Datum ;


 int ALLOCSET_SMALL_SIZES ;
 int AccessShareLock ;
 int * AllocSetContextCreate (int ,char*,int ) ;
 int Anum_pg_rewrite_ev_action ;
 int Anum_pg_rewrite_ev_class ;
 int Anum_pg_rewrite_ev_qual ;
 int Assert (int) ;
 int BTEqualStrategyNumber ;
 int CacheMemoryContext ;
 int F_OIDEQ ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 scalar_t__ MemoryContextAlloc (int *,int) ;
 int MemoryContextCopyAndSetIdentifier (int *,int ) ;
 int MemoryContextDelete (int *) ;
 int * MemoryContextSwitchTo (int *) ;
 int ObjectIdGetDatum (int ) ;
 int RelationGetDescr (TYPE_4__*) ;
 int RelationGetRelationName (TYPE_4__*) ;
 int RelationGetRelid (TYPE_4__*) ;
 int RewriteRelRulenameIndexId ;
 int RewriteRelationId ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 char* TextDatumGetCString (int ) ;
 int heap_getattr (int ,int ,int ,int*) ;
 int pfree (char*) ;
 scalar_t__ repalloc (TYPE_3__**,int) ;
 int setRuleCheckAsUser (int *,int ) ;
 scalar_t__ stringToNode (char*) ;
 int systable_beginscan (TYPE_4__*,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (TYPE_4__*,int ) ;
 TYPE_4__* table_open (int ,int ) ;

__attribute__((used)) static void
RelationBuildRuleLock(Relation relation)
{
 MemoryContext rulescxt;
 MemoryContext oldcxt;
 HeapTuple rewrite_tuple;
 Relation rewrite_desc;
 TupleDesc rewrite_tupdesc;
 SysScanDesc rewrite_scan;
 ScanKeyData key;
 RuleLock *rulelock;
 int numlocks;
 RewriteRule **rules;
 int maxlocks;




 rulescxt = AllocSetContextCreate(CacheMemoryContext,
          "relation rules",
          ALLOCSET_SMALL_SIZES);
 relation->rd_rulescxt = rulescxt;
 MemoryContextCopyAndSetIdentifier(rulescxt,
           RelationGetRelationName(relation));





 maxlocks = 4;
 rules = (RewriteRule **)
  MemoryContextAlloc(rulescxt, sizeof(RewriteRule *) * maxlocks);
 numlocks = 0;




 ScanKeyInit(&key,
    Anum_pg_rewrite_ev_class,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(RelationGetRelid(relation)));
 rewrite_desc = table_open(RewriteRelationId, AccessShareLock);
 rewrite_tupdesc = RelationGetDescr(rewrite_desc);
 rewrite_scan = systable_beginscan(rewrite_desc,
           RewriteRelRulenameIndexId,
           1, ((void*)0),
           1, &key);

 while (HeapTupleIsValid(rewrite_tuple = systable_getnext(rewrite_scan)))
 {
  Form_pg_rewrite rewrite_form = (Form_pg_rewrite) GETSTRUCT(rewrite_tuple);
  bool isnull;
  Datum rule_datum;
  char *rule_str;
  RewriteRule *rule;

  rule = (RewriteRule *) MemoryContextAlloc(rulescxt,
              sizeof(RewriteRule));

  rule->ruleId = rewrite_form->oid;

  rule->event = rewrite_form->ev_type - '0';
  rule->enabled = rewrite_form->ev_enabled;
  rule->isInstead = rewrite_form->is_instead;







  rule_datum = heap_getattr(rewrite_tuple,
          Anum_pg_rewrite_ev_action,
          rewrite_tupdesc,
          &isnull);
  Assert(!isnull);
  rule_str = TextDatumGetCString(rule_datum);
  oldcxt = MemoryContextSwitchTo(rulescxt);
  rule->actions = (List *) stringToNode(rule_str);
  MemoryContextSwitchTo(oldcxt);
  pfree(rule_str);

  rule_datum = heap_getattr(rewrite_tuple,
          Anum_pg_rewrite_ev_qual,
          rewrite_tupdesc,
          &isnull);
  Assert(!isnull);
  rule_str = TextDatumGetCString(rule_datum);
  oldcxt = MemoryContextSwitchTo(rulescxt);
  rule->qual = (Node *) stringToNode(rule_str);
  MemoryContextSwitchTo(oldcxt);
  pfree(rule_str);
  setRuleCheckAsUser((Node *) rule->actions, relation->rd_rel->relowner);
  setRuleCheckAsUser(rule->qual, relation->rd_rel->relowner);

  if (numlocks >= maxlocks)
  {
   maxlocks *= 2;
   rules = (RewriteRule **)
    repalloc(rules, sizeof(RewriteRule *) * maxlocks);
  }
  rules[numlocks++] = rule;
 }




 systable_endscan(rewrite_scan);
 table_close(rewrite_desc, AccessShareLock);




 if (numlocks == 0)
 {
  relation->rd_rules = ((void*)0);
  relation->rd_rulescxt = ((void*)0);
  MemoryContextDelete(rulescxt);
  return;
 }




 rulelock = (RuleLock *) MemoryContextAlloc(rulescxt, sizeof(RuleLock));
 rulelock->numLocks = numlocks;
 rulelock->rules = rules;

 relation->rd_rules = rulelock;
}
