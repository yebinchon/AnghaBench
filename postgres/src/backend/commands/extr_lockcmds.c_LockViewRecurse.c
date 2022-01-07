
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int nowait; int ancestor_views; int viewoid; int viewowner; int lockmode; } ;
struct TYPE_9__ {TYPE_1__* rd_rel; } ;
struct TYPE_8__ {int relowner; } ;
typedef TYPE_2__* Relation ;
typedef int Query ;
typedef int Oid ;
typedef int Node ;
typedef TYPE_3__ LockViewRecurse_context ;
typedef int List ;
typedef int LOCKMODE ;


 int LockViewRecurse_walker (int *,TYPE_3__*) ;
 int NoLock ;
 int * get_view_query (TYPE_2__*) ;
 int lappend_oid (int *,int ) ;
 int list_delete_last (int ) ;
 int table_close (TYPE_2__*,int ) ;
 TYPE_2__* table_open (int ,int ) ;

__attribute__((used)) static void
LockViewRecurse(Oid reloid, LOCKMODE lockmode, bool nowait, List *ancestor_views)
{
 LockViewRecurse_context context;

 Relation view;
 Query *viewquery;

 view = table_open(reloid, NoLock);
 viewquery = get_view_query(view);

 context.lockmode = lockmode;
 context.nowait = nowait;
 context.viewowner = view->rd_rel->relowner;
 context.viewoid = reloid;
 context.ancestor_views = lappend_oid(ancestor_views, reloid);

 LockViewRecurse_walker((Node *) viewquery, &context);

 (void) list_delete_last(context.ancestor_views);

 table_close(view, NoLock);
}
