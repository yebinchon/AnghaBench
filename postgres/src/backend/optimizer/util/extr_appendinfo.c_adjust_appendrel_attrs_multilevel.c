
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int parent_relid; } ;
typedef int * Relids ;
typedef int PlannerInfo ;
typedef int Node ;
typedef int Bitmapset ;
typedef TYPE_1__ AppendRelInfo ;


 int Assert (int) ;
 int * adjust_appendrel_attrs (int *,int *,int,TYPE_1__**) ;
 int * bms_add_member (int *,int ) ;
 int bms_equal (int *,int *) ;
 scalar_t__ bms_num_members (int *) ;
 TYPE_1__** find_appinfos_by_relids (int *,int *,int*) ;
 int pfree (TYPE_1__**) ;

Node *
adjust_appendrel_attrs_multilevel(PlannerInfo *root, Node *node,
          Relids child_relids,
          Relids top_parent_relids)
{
 AppendRelInfo **appinfos;
 Bitmapset *parent_relids = ((void*)0);
 int nappinfos;
 int cnt;

 Assert(bms_num_members(child_relids) == bms_num_members(top_parent_relids));

 appinfos = find_appinfos_by_relids(root, child_relids, &nappinfos);


 for (cnt = 0; cnt < nappinfos; cnt++)
 {
  AppendRelInfo *appinfo = appinfos[cnt];

  parent_relids = bms_add_member(parent_relids, appinfo->parent_relid);
 }


 if (!bms_equal(parent_relids, top_parent_relids))
  node = adjust_appendrel_attrs_multilevel(root, node, parent_relids,
             top_parent_relids);


 node = adjust_appendrel_attrs(root, node, nappinfos, appinfos);

 pfree(appinfos);

 return node;
}
