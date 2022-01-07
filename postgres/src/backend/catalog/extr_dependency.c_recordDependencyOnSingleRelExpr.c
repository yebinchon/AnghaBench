
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int rte ;
struct TYPE_18__ {TYPE_3__* addrs; TYPE_2__* rtables; } ;
typedef TYPE_1__ find_expr_references_context ;
struct TYPE_21__ {scalar_t__ classId; scalar_t__ objectId; } ;
struct TYPE_20__ {scalar_t__ numrefs; TYPE_4__* refs; } ;
struct TYPE_19__ {int rellockmode; int relkind; scalar_t__ relid; int rtekind; int type; } ;
typedef TYPE_2__ RangeTblEntry ;
typedef scalar_t__ Oid ;
typedef TYPE_3__ ObjectAddresses ;
typedef TYPE_4__ ObjectAddress ;
typedef int Node ;
typedef int DependencyType ;


 int AccessShareLock ;
 int MemSet (TYPE_2__*,int ,int) ;
 int RELKIND_RELATION ;
 int RTE_RELATION ;
 scalar_t__ RelationRelationId ;
 int T_RangeTblEntry ;
 int add_exact_object_address (TYPE_4__*,TYPE_3__*) ;
 int eliminate_duplicate_dependencies (TYPE_3__*) ;
 int find_expr_references_walker (int *,TYPE_1__*) ;
 int free_object_addresses (TYPE_3__*) ;
 TYPE_2__* list_make1 (TYPE_2__*) ;
 void* new_object_addresses () ;
 int recordDependencyOn (TYPE_4__*,TYPE_4__ const*,int ) ;
 int recordMultipleDependencies (TYPE_4__ const*,TYPE_4__*,int,int ) ;

void
recordDependencyOnSingleRelExpr(const ObjectAddress *depender,
        Node *expr, Oid relId,
        DependencyType behavior,
        DependencyType self_behavior,
        bool reverse_self)
{
 find_expr_references_context context;
 RangeTblEntry rte;

 context.addrs = new_object_addresses();


 MemSet(&rte, 0, sizeof(rte));
 rte.type = T_RangeTblEntry;
 rte.rtekind = RTE_RELATION;
 rte.relid = relId;
 rte.relkind = RELKIND_RELATION;
 rte.rellockmode = AccessShareLock;

 context.rtables = list_make1(list_make1(&rte));


 find_expr_references_walker(expr, &context);


 eliminate_duplicate_dependencies(context.addrs);


 if ((behavior != self_behavior || reverse_self) &&
  context.addrs->numrefs > 0)
 {
  ObjectAddresses *self_addrs;
  ObjectAddress *outobj;
  int oldref,
     outrefs;

  self_addrs = new_object_addresses();

  outobj = context.addrs->refs;
  outrefs = 0;
  for (oldref = 0; oldref < context.addrs->numrefs; oldref++)
  {
   ObjectAddress *thisobj = context.addrs->refs + oldref;

   if (thisobj->classId == RelationRelationId &&
    thisobj->objectId == relId)
   {

    add_exact_object_address(thisobj, self_addrs);
   }
   else
   {

    *outobj = *thisobj;
    outobj++;
    outrefs++;
   }
  }
  context.addrs->numrefs = outrefs;


  if (!reverse_self)
   recordMultipleDependencies(depender,
            self_addrs->refs, self_addrs->numrefs,
            self_behavior);
  else
  {

   int selfref;

   for (selfref = 0; selfref < self_addrs->numrefs; selfref++)
   {
    ObjectAddress *thisobj = self_addrs->refs + selfref;

    recordDependencyOn(thisobj, depender, self_behavior);
   }
  }

  free_object_addresses(self_addrs);
 }


 recordMultipleDependencies(depender,
          context.addrs->refs, context.addrs->numrefs,
          behavior);

 free_object_addresses(context.addrs);
}
